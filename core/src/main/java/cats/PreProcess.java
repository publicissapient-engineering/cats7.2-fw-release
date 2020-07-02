/*******************************************************************************
 * © Copyright 2019 Publicis Sapient. All rights reserved
 * 
 * Permission to copy, modify and/or redistribute this program requires prior
 * written consent from Publicis Sapient.
 * 
 * Above copyright notice and permission notice must appear in all copies.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * 
 * CONTRIBUTOR: CATS|Core@publicissapient.com
 ******************************************************************************/
package cats;

import com.sapient.qa.cats.core.framework.Launcher;

public class PreProcess {
  private PreProcess() {}

  public static void main(String[] args) throws Exception {
    Launcher.main(new String[] {"preprocess"});
  }
}
