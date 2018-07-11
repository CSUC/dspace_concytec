/**
 * The contents of this file are subject to the license and copyright detailed
 * in the LICENSE and NOTICE files at the root of the source tree and available
 * online at
 *
 * http://www.dspace.org/license/
 */
package org.dspace.ctask.general;

import org.apache.log4j.Logger;
import org.dspace.content.MetadataValue;
import org.dspace.content.DSpaceObject;
import org.dspace.content.Item;
import org.dspace.curate.AbstractCurationTask;
import org.dspace.curate.Curator;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.logging.Level;
import org.dspace.authorize.AuthorizeException;
import org.dspace.content.Bitstream;
import org.dspace.content.Bundle;
import org.dspace.core.Context;

public class ActualizarDCRights extends AbstractCurationTask {

    // The status of this item
    protected int status = Curator.CURATE_UNSET;

    // The results of processing this
    protected List<String> results = null;

    // The log4j logger for this class
    private static Logger log = Logger.getLogger(ActualizarDCRights.class);

    @Override
    public int perform(DSpaceObject dso) throws IOException {
        // The results that we'll return
        StringBuilder results = new StringBuilder();

        // Unless this is an item, we'll skip this item
        status = Curator.CURATE_SKIP;
        boolean changed = false;
        logDebugMessage("The target dso is " + dso.getName());
        if (dso instanceof Item) {
            try {
                Item item = (Item) dso;
                // Modifica tots els dc.rights canviant-lo d'any anterior->actual
                Calendar now = Calendar.getInstance();
                int year = now.get(Calendar.YEAR);
                String yearInString = String.valueOf(year);
                String lastYear = String.valueOf(year - 1);
                List<MetadataValue> rights = itemService.getMetadata(item, "dc", "rights", null, Item.ANY);
                item.getItemService().clearMetadata(Curator.curationContext(), item, "dc", "rights", null, Item.ANY);
                for (MetadataValue right : rights) {
                    if ((right.getValue().matches("^©.*, " + lastYear + "$"))) {
                        item.getItemService().addMetadata(Curator.curationContext(), item, "dc", "rights", null, "ca", right.getValue().replace(lastYear, yearInString));
			logDebugMessage("DCRight a modificar: " + right.getValue().replaceAll(lastYear, yearInString)+ " ->  "+right.getValue());

                    } else {
                        item.getItemService().addMetadata(Curator.curationContext(), item, "dc", "rights", null, "ca", right.getValue());
			logDebugMessage("DCRight: " + right.getValue());
                    }
                }
                item.getItemService().update(Curator.curationContext(), item);
                status = Curator.CURATE_SUCCESS;

            } catch (SQLException sqle) {
                // Something went wrong
                logDebugMessage(sqle.getMessage());
                status = Curator.CURATE_ERROR;
            } catch (AuthorizeException ex) {
                java.util.logging.Logger.getLogger(ActualizarDCRights.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        return status;

    }

    /**
     * Debugging logging if required
     *
     * @param message The message to log
     */
    protected void logDebugMessage(String message) {
        if (log.isDebugEnabled()) {
            log.debug(message);
        }
    }
}

