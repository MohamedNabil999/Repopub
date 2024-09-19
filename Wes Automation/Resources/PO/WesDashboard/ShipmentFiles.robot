*** Settings ***
Library     SeleniumLibrary
Library     JSONLibrary
Library     FakerLibrary
Library     OperatingSystem
Library     String
Documentation    Update
...     Library Documenation : https://robotframework-thailand.github.io/robotframework-jsonlibrary/JSONLibrary.html
Resource    ../../Common.robot
Resource    ../../Configurations/config.robot
*** Keywords ***
Create Data Case 1 In Json File
    #One item inside case inside inventory
    ${DATA_FILE_CASE_1_PATH_VALUE}      Normalize Path      ${DATA_FILE_CASE_1_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_1}        Load Json From File      ${DATA_FILE_CASE_1_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_1_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_1_VALUE}
    ${CASE_1_BARCODE_ITEM_1_CASE_1_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_1_CASE_1_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_1_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_1_VALUE}
    ${GTIN_ITEM_1_CASE_1_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_1_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_1_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_1_VALUE}
    ${DIC_ITEM_1_CASE_1}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_1_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_1_VALUE}      parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_1_VALUE}       GTIN=${GTIN_ITEM_1_CASE_1_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_1_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_1_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_1}       $.data[0]        ${DIC_ITEM_1_CASE_1}
    dump json to file       ${DATA_FILE_CASE_1_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_1_FROM_JSON}


Create Data Case 2 In Json File
    #one item inside inventory, one inside single case and one inside doube case (all same gtin & lot)
    ${DATA_FILE_CASE_2_PATH_VALUE}      Normalize Path      ${DATA_FILE_CASE_2_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_2}        Load Json From File      ${DATA_FILE_CASE_2_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_2_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_2_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_2_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_2_VALUE}
    ${GTIN_ITEM_1_CASE_2_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_2_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_2_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_2_VALUE}
    ${DIC_ITEM_1_CASE_2}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_2_VALUE}       parent1=${INVENTORY_1_BARCODE_ITEM_1_CASE_2_VALUE}          GTIN=${GTIN_ITEM_1_CASE_2_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_2_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_2_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_2}       $.data[0]        ${DIC_ITEM_1_CASE_2}
    dump json to file       ${DATA_FILE_CASE_2_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_2_FROM_JSON}


    ${DATA_FILE_ITEM_2_CASE_2}        Load Json From File      ${DATA_FILE_CASE_2_PATH_VALUE}
    ${CASE_1_BARCODE_ITEM_2_CASE_2_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_2_CASE_2_VALUE}
    ${ITEM_CASE_1_BARCODE_ITEM_2_CASE_2_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_CASE_1_BARCODE_ITEM_2_CASE_2_VALUE}
    ${DIC_ITEM_2_CASE_2}      create dictionary       barcode=${ITEM_CASE_1_BARCODE_ITEM_2_CASE_2_VALUE}       parent1=${CASE_1_BARCODE_ITEM_2_CASE_2_VALUE}     parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_2_VALUE}               GTIN=${GTIN_ITEM_1_CASE_2_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_2_VALUE}      expiry=${EXPIRY_DATE_VALUE}             manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_2_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_2}       $.data[1]        ${DIC_ITEM_2_CASE_2}
    dump json to file       ${DATA_FILE_CASE_2_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_2_FROM_JSON}


    ${DATA_FILE_ITEM_3_CASE_2}        Load Json From File      ${DATA_FILE_CASE_2_PATH_VALUE}
    ${CASE_1_BARCODE_ITEM_3_CASE_2_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_3_CASE_2_VALUE}
    ${CASE_2_BARCODE_ITEM_3_CASE_2_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_2_BARCODE_ITEM_3_CASE_2_VALUE}
    ${ITEM_CASE_1_CASE_2_BARCODE_ITEM_3_CASE_2_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_CASE_1_CASE_2_BARCODE_ITEM_3_CASE_2_VALUE}
    ${DIC_ITEM_3_CASE_2}      create dictionary       barcode=${ITEM_CASE_1_CASE_2_BARCODE_ITEM_3_CASE_2_VALUE}       parent1=${CASE_2_BARCODE_ITEM_3_CASE_2_VALUE}     parent2=${CASE_1_BARCODE_ITEM_3_CASE_2_VALUE}         parent3=${INVENTORY_1_BARCODE_ITEM_1_CASE_2_VALUE}         GTIN=${GTIN_ITEM_1_CASE_2_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_2_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_2_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_2}       $.data[2]        ${DIC_ITEM_3_CASE_2}
    dump json to file       ${DATA_FILE_CASE_2_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_2_FROM_JSON}


Create Data Case 3 In Json File
    #Three items inside inventory (all same gtin & lot)
    ${DATA_FILE_CASE_3_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_3_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_3}        Load Json From File      ${DATA_FILE_CASE_3_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_3_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_3_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_3_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_3_VALUE}
    ${GTIN_ITEM_1_CASE_3_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_3_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_3_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_3_VALUE}
    ${DIC_ITEM_1_CASE_3}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_3_VALUE}       parent1=${INVENTORY_1_BARCODE_ITEM_1_CASE_3_VALUE}          GTIN=${GTIN_ITEM_1_CASE_3_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_3_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_3_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_3}       $.data[0]        ${DIC_ITEM_1_CASE_3}
    dump json to file       ${DATA_FILE_CASE_3_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_3_FROM_JSON}


    ${DATA_FILE_ITEM_2_CASE_3}        Load Json From File      ${DATA_FILE_CASE_3_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_3_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_3_VALUE}
    ${DIC_ITEM_2_CASE_3}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_3_VALUE}       parent1=${INVENTORY_1_BARCODE_ITEM_1_CASE_3_VALUE}              GTIN=${GTIN_ITEM_1_CASE_3_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_3_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_3_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_3}       $.data[1]        ${DIC_ITEM_2_CASE_3}
    dump json to file       ${DATA_FILE_CASE_3_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_3_FROM_JSON}


    ${DATA_FILE_ITEM_3_CASE_3}        Load Json From File      ${DATA_FILE_CASE_3_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_3_CASE_3_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_3_CASE_3_VALUE}
    ${DIC_ITEM_3_CASE_3}      create dictionary       barcode=${ITEM_BARCODE_ITEM_3_CASE_3_VALUE}       parent1=${INVENTORY_1_BARCODE_ITEM_1_CASE_3_VALUE}           GTIN=${GTIN_ITEM_1_CASE_3_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_3_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_3_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_3}       $.data[2]        ${DIC_ITEM_3_CASE_3}
    dump json to file       ${DATA_FILE_CASE_3_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_3_FROM_JSON}


Create Data Case 4 In Json File
    #One item inside inventory & one item inside another inventory (all same gtin & lot)
    ${DATA_FILE_CASE_4_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_4_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_4}        Load Json From File      ${DATA_FILE_CASE_4_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_4_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_4_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_4_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_4_VALUE}
    ${GTIN_ITEM_1_CASE_4_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_4_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_4_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_4_VALUE}
    ${DIC_ITEM_1_CASE_4}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_4_VALUE}       parent1=${INVENTORY_1_BARCODE_ITEM_1_CASE_4_VALUE}          GTIN=${GTIN_ITEM_1_CASE_4_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_4_VALUE}      expiry=${EXPIRY_DATE_VALUE}             manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_4_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_4}       $.data[0]        ${DIC_ITEM_1_CASE_4}
    dump json to file       ${DATA_FILE_CASE_4_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_4_FROM_JSON}


    ${DATA_FILE_ITEM_2_CASE_4}        Load Json From File      ${DATA_FILE_CASE_4_PATH_VALUE}
    ${INVENTORY_2_BARCODE_ITEM_1_CASE_4_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_2_BARCODE_ITEM_1_CASE_4_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_4_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_4_VALUE}
    ${DIC_ITEM_2_CASE_4}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_4_VALUE}       parent1=${INVENTORY_2_BARCODE_ITEM_1_CASE_4_VALUE}              GTIN=${GTIN_ITEM_1_CASE_4_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_4_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_4_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_4}       $.data[1]        ${DIC_ITEM_2_CASE_4}
    dump json to file       ${DATA_FILE_CASE_4_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_4_FROM_JSON}


Create Data Case 5 In Json File
    #three items inside case inside inventory (same gtin different lot)
    ${DATA_FILE_CASE_5_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_5_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_5}        Load Json From File      ${DATA_FILE_CASE_5_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_5_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_5_VALUE}
    ${CASE_1_BARCODE_ITEM_1_CASE_5_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_1_CASE_5_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_5_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_5_VALUE}
    ${GTIN_ITEM_1_CASE_5_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_5_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_5_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_5_VALUE}
    ${DIC_ITEM_1_CASE_5}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_5_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_5_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_5_VALUE}      GTIN=${GTIN_ITEM_1_CASE_5_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_5_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_5_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_5}       $.data[0]        ${DIC_ITEM_1_CASE_5}
    dump json to file       ${DATA_FILE_CASE_5_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_5_FROM_JSON}


    ${DATA_FILE_ITEM_2_CASE_5}        Load Json From File      ${DATA_FILE_CASE_5_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_5_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_5_VALUE}
    ${BATCH_NUMBER_ITEM_2_CASE_5_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_2_CASE_5_VALUE}
    ${DIC_ITEM_2_CASE_5}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_5_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_5_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_5_VALUE}       GTIN=${GTIN_ITEM_1_CASE_5_VALUE}          batch_number=${BATCH_NUMBER_ITEM_2_CASE_5_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_5_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_5}       $.data[1]        ${DIC_ITEM_2_CASE_5}
    dump json to file       ${DATA_FILE_CASE_5_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_5_FROM_JSON}


    ${DATA_FILE_ITEM_3_CASE_5}        Load Json From File      ${DATA_FILE_CASE_5_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_3_CASE_5_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_3_CASE_5_VALUE}
    ${BATCH_NUMBER_ITEM_3_CASE_5_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_3_CASE_5_VALUE}
    ${DIC_ITEM_3_CASE_5}      create dictionary       barcode=${ITEM_BARCODE_ITEM_3_CASE_5_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_5_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_5_VALUE}       GTIN=${GTIN_ITEM_1_CASE_5_VALUE}          batch_number=${BATCH_NUMBER_ITEM_3_CASE_5_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_5_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_5}       $.data[2]        ${DIC_ITEM_3_CASE_5}
    dump json to file       ${DATA_FILE_CASE_5_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_5_FROM_JSON}


Create Data Case 6 In Json File
    #three items inside case inside inventory (different gtin same lot)
    ${DATA_FILE_CASE_6_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_6_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_6}        Load Json From File      ${DATA_FILE_CASE_6_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_6_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_6_VALUE}
    ${CASE_1_BARCODE_ITEM_1_CASE_6_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_1_CASE_6_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_6_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_6_VALUE}
    ${GTIN_ITEM_1_CASE_6_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_6_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_6_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_6_VALUE}
    ${DIC_ITEM_1_CASE_6}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_6_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_6_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_6_VALUE}      GTIN=${GTIN_ITEM_1_CASE_6_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_6_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_6_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_6}       $.data[0]        ${DIC_ITEM_1_CASE_6}
    dump json to file       ${DATA_FILE_CASE_6_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_6_FROM_JSON}


    ${DATA_FILE_ITEM_2_CASE_6}        Load Json From File      ${DATA_FILE_CASE_6_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_6_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_6_VALUE}
    ${GTIN_ITEM_2_CASE_6_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_2_CASE_6_VALUE}
    ${DIC_ITEM_2_CASE_6}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_6_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_6_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_6_VALUE}       GTIN=${GTIN_ITEM_2_CASE_6_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_6_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_6_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_6}       $.data[1]        ${DIC_ITEM_2_CASE_6}
    dump json to file       ${DATA_FILE_CASE_6_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_6_FROM_JSON}


    ${DATA_FILE_ITEM_3_CASE_6}        Load Json From File      ${DATA_FILE_CASE_6_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_3_CASE_6_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_3_CASE_6_VALUE}
    ${GTIN_ITEM_3_CASE_6_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_3_CASE_6_VALUE}
    ${DIC_ITEM_3_CASE_6}      create dictionary       barcode=${ITEM_BARCODE_ITEM_3_CASE_6_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_6_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_6_VALUE}       GTIN=${GTIN_ITEM_3_CASE_6_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_6_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_6_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_6}       $.data[2]        ${DIC_ITEM_3_CASE_6}
    dump json to file       ${DATA_FILE_CASE_6_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_6_FROM_JSON}


Create Data Case 7 In Json File
    #three items inside case inside inventory (different gtin different lot)
    ${DATA_FILE_CASE_7_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_7_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_7}        Load Json From File      ${DATA_FILE_CASE_7_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_7_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_7_VALUE}
    ${CASE_1_BARCODE_ITEM_1_CASE_7_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_1_CASE_7_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_7_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_7_VALUE}
    ${GTIN_ITEM_1_CASE_7_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_7_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_7_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_7_VALUE}
    ${DIC_ITEM_1_CASE_7}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_7_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_7_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_7_VALUE}      GTIN=${GTIN_ITEM_1_CASE_7_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_7_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_7_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_7}       $.data[0]        ${DIC_ITEM_1_CASE_7}
    dump json to file       ${DATA_FILE_CASE_7_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_7_FROM_JSON}


    ${DATA_FILE_ITEM_2_CASE_7}        Load Json From File      ${DATA_FILE_CASE_7_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_7_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_7_VALUE}
    ${GTIN_ITEM_2_CASE_7_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_2_CASE_7_VALUE}
    ${BATCH_NUMBER_ITEM_2_CASE_7_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_2_CASE_7_VALUE}
    ${DIC_ITEM_2_CASE_7}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_7_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_7_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_7_VALUE}       GTIN=${GTIN_ITEM_2_CASE_7_VALUE}          batch_number=${BATCH_NUMBER_ITEM_2_CASE_7_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_7_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_7}       $.data[1]        ${DIC_ITEM_2_CASE_7}
    dump json to file       ${DATA_FILE_CASE_7_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_7_FROM_JSON}


    ${DATA_FILE_ITEM_3_CASE_7}        Load Json From File      ${DATA_FILE_CASE_7_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_3_CASE_7_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_3_CASE_7_VALUE}
    ${GTIN_ITEM_3_CASE_7_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_3_CASE_7_VALUE}
    ${BATCH_NUMBER_ITEM_3_CASE_7_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_3_CASE_7_VALUE}
    ${DIC_ITEM_3_CASE_7}      create dictionary       barcode=${ITEM_BARCODE_ITEM_3_CASE_7_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_7_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_7_VALUE}       GTIN=${GTIN_ITEM_3_CASE_7_VALUE}          batch_number=${BATCH_NUMBER_ITEM_3_CASE_7_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_7_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_7}       $.data[2]        ${DIC_ITEM_3_CASE_7}
    dump json to file       ${DATA_FILE_CASE_7_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_7_FROM_JSON}


Create Data Case 8 In Json File
    #two items inside case B inside case A inside inventory A & one item inside Case A inventory A(same gtin same lot)
    ${DATA_FILE_CASE_8_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_8_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_8}        Load Json From File      ${DATA_FILE_CASE_8_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_8_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_8_VALUE}
    ${CASE_1_BARCODE_ITEM_1_CASE_8_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_1_CASE_8_VALUE}
    ${CASE_2_BARCODE_ITEM_1_CASE_8_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_2_BARCODE_ITEM_1_CASE_8_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_8_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_8_VALUE}
    ${GTIN_ITEM_1_CASE_8_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_8_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_8_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_8_VALUE}
    ${DIC_ITEM_1_CASE_8}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_8_VALUE}       parent1=${CASE_2_BARCODE_ITEM_1_CASE_8_VALUE}      parent2=${CASE_1_BARCODE_ITEM_1_CASE_8_VALUE}      parent3=${INVENTORY_1_BARCODE_ITEM_1_CASE_8_VALUE}      GTIN=${GTIN_ITEM_1_CASE_8_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_8_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_8_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_8}       $.data[0]        ${DIC_ITEM_1_CASE_8}
    dump json to file       ${DATA_FILE_CASE_8_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_8_FROM_JSON}


    ${DATA_FILE_ITEM_2_CASE_8}        Load Json From File      ${DATA_FILE_CASE_8_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_8_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_8_VALUE}
    ${DIC_ITEM_2_CASE_8}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_8_VALUE}       parent1=${CASE_2_BARCODE_ITEM_1_CASE_8_VALUE}       parent2=${CASE_1_BARCODE_ITEM_1_CASE_8_VALUE}      parent3=${INVENTORY_1_BARCODE_ITEM_1_CASE_8_VALUE}       GTIN=${GTIN_ITEM_1_CASE_8_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_8_VALUE}      expiry=${EXPIRY_DATE_VALUE}             manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_8_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_8}       $.data[1]        ${DIC_ITEM_2_CASE_8}
    dump json to file       ${DATA_FILE_CASE_8_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_8_FROM_JSON}


    ${DATA_FILE_ITEM_3_CASE_8}        Load Json From File      ${DATA_FILE_CASE_8_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_3_CASE_8_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_3_CASE_8_VALUE}
    ${DIC_ITEM_3_CASE_8}      create dictionary       barcode=${ITEM_BARCODE_ITEM_3_CASE_8_VALUE}     parent1=${CASE_1_BARCODE_ITEM_1_CASE_8_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_8_VALUE}             GTIN=${GTIN_ITEM_1_CASE_8_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_8_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_8_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_8}       $.data[2]        ${DIC_ITEM_3_CASE_8}
    dump json to file       ${DATA_FILE_CASE_8_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_8_FROM_JSON}

Create Data Case 9 In Json File
    #two items inside case inside inventory (same gtin different lot) & two items inside case inside inventory (another gtin another lot)
    ${DATA_FILE_CASE_9_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_9_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_9}        Load Json From File      ${DATA_FILE_CASE_9_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_9_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_9_VALUE}
    ${CASE_1_BARCODE_ITEM_1_CASE_9_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_1_CASE_9_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_9_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_9_VALUE}
    ${GTIN_ITEM_1_CASE_9_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_9_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_9_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_9_VALUE}
    ${DIC_ITEM_1_CASE_9}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_9_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_9_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_9_VALUE}      GTIN=${GTIN_ITEM_1_CASE_9_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_9_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_9_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_9}       $.data[0]        ${DIC_ITEM_1_CASE_9}
    dump json to file       ${DATA_FILE_CASE_9_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_9_FROM_JSON}

    ${DATA_FILE_ITEM_2_CASE_9}        Load Json From File      ${DATA_FILE_CASE_9_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_9_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_9_VALUE}
    ${DIC_ITEM_2_CASE_9}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_9_VALUE}       parent1=${CASE_1_BARCODE_ITEM_1_CASE_9_VALUE}       parent2=${INVENTORY_1_BARCODE_ITEM_1_CASE_9_VALUE}       GTIN=${GTIN_ITEM_1_CASE_9_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_9_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_9_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_9}       $.data[1]        ${DIC_ITEM_2_CASE_9}
    dump json to file       ${DATA_FILE_CASE_9_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_9_FROM_JSON}

    ${DATA_FILE_ITEM_3_CASE_9}        Load Json From File      ${DATA_FILE_CASE_9_PATH_VALUE}
    ${INVENTORY_2_BARCODE_ITEM_3_CASE_9_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_2_BARCODE_ITEM_3_CASE_9_VALUE}
    ${CASE_2_BARCODE_ITEM_3_CASE_9_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_2_BARCODE_ITEM_3_CASE_9_VALUE}
    ${ITEM_BARCODE_ITEM_3_CASE_9_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_3_CASE_9_VALUE}
    ${GTIN_ITEM_3_CASE_9_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_3_CASE_9_VALUE}
    ${BATCH_NUMBER_ITEM_3_CASE_9_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_3_CASE_9_VALUE}
    ${DIC_ITEM_3_CASE_9}      create dictionary       barcode=${ITEM_BARCODE_ITEM_3_CASE_9_VALUE}       parent1=${CASE_2_BARCODE_ITEM_3_CASE_9_VALUE}       parent2=${INVENTORY_2_BARCODE_ITEM_3_CASE_9_VALUE}      GTIN=${GTIN_ITEM_3_CASE_9_VALUE}          batch_number=${BATCH_NUMBER_ITEM_3_CASE_9_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_9_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_9}       $.data[2]        ${DIC_ITEM_3_CASE_9}
    dump json to file       ${DATA_FILE_CASE_9_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_9_FROM_JSON}

    ${DATA_FILE_ITEM_4_CASE_9}        Load Json From File      ${DATA_FILE_CASE_9_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_4_CASE_9_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_4_CASE_9_VALUE}
    ${DIC_ITEM_4_CASE_9}      create dictionary       barcode=${ITEM_BARCODE_ITEM_4_CASE_9_VALUE}       parent1=${CASE_2_BARCODE_ITEM_3_CASE_9_VALUE}       parent2=${INVENTORY_2_BARCODE_ITEM_3_CASE_9_VALUE}       GTIN=${GTIN_ITEM_3_CASE_9_VALUE}          batch_number=${BATCH_NUMBER_ITEM_3_CASE_9_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_4_CASE_9_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_4_CASE_9}       $.data[3]        ${DIC_ITEM_4_CASE_9}
    dump json to file       ${DATA_FILE_CASE_9_PATH_VALUE}           ${BARCODE_VALUES_ITEM_4_CASE_9_FROM_JSON}

Create Data Case 10 In Json File
    #two items inside case B inside Case A inside inventory A & two items inside case C inside case A inside inventory A(same gtin same lot)
    ${DATA_FILE_CASE_10_PATH_VALUE}      Normalize Path       ${DATA_FILE_CASE_10_PATH_VALUE}
    ${DATA_FILE_ITEM_1_CASE_10}        Load Json From File      ${DATA_FILE_CASE_10_PATH_VALUE}
    ${INVENTORY_1_BARCODE_ITEM_1_CASE_10_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${INVENTORY_1_BARCODE_ITEM_1_CASE_10_VALUE}
    ${CASE_1_BARCODE_ITEM_1_CASE_10_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_1_BARCODE_ITEM_1_CASE_10_VALUE}
    ${CASE_2_BARCODE_ITEM_1_CASE_10_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_2_BARCODE_ITEM_1_CASE_10_VALUE}
    ${ITEM_BARCODE_ITEM_1_CASE_10_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_1_CASE_10_VALUE}
    ${GTIN_ITEM_1_CASE_10_VALUE} =  Generate Random String     14     [NUMBERS]
    Set Global Variable     ${GTIN_ITEM_1_CASE_10_VALUE}
    ${BATCH_NUMBER_ITEM_1_CASE_10_VALUE}   FakerLibrary.FirstName
    Set Global Variable     ${BATCH_NUMBER_ITEM_1_CASE_10_VALUE}
    ${DIC_ITEM_1_CASE_10}      create dictionary       barcode=${ITEM_BARCODE_ITEM_1_CASE_10_VALUE}       parent1=${CASE_2_BARCODE_ITEM_1_CASE_10_VALUE}     parent2=${CASE_1_BARCODE_ITEM_1_CASE_10_VALUE}          parent3=${INVENTORY_1_BARCODE_ITEM_1_CASE_10_VALUE}        GTIN=${GTIN_ITEM_1_CASE_10_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_10_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_1_CASE_10_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_1_CASE_10}       $.data[0]        ${DIC_ITEM_1_CASE_10}
    dump json to file       ${DATA_FILE_CASE_10_PATH_VALUE}           ${BARCODE_VALUES_ITEM_1_CASE_10_FROM_JSON}

    ${DATA_FILE_ITEM_2_CASE_10}        Load Json From File      ${DATA_FILE_CASE_10_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_2_CASE_10_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_2_CASE_10_VALUE}
    ${DIC_ITEM_2_CASE_10}      create dictionary       barcode=${ITEM_BARCODE_ITEM_2_CASE_10_VALUE}       parent1=${CASE_2_BARCODE_ITEM_1_CASE_10_VALUE}       parent2=${CASE_1_BARCODE_ITEM_1_CASE_10_VALUE}       parent3=${INVENTORY_1_BARCODE_ITEM_1_CASE_10_VALUE}         GTIN=${GTIN_ITEM_1_CASE_10_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_10_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_2_CASE_10_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_2_CASE_10}       $.data[1]        ${DIC_ITEM_2_CASE_10}
    dump json to file       ${DATA_FILE_CASE_10_PATH_VALUE}           ${BARCODE_VALUES_ITEM_2_CASE_10_FROM_JSON}

    ${DATA_FILE_ITEM_3_CASE_10}        Load Json From File      ${DATA_FILE_CASE_10_PATH_VALUE}
    ${CASE_3_BARCODE_ITEM_3_CASE_10_VALUE} =  Generate Random String     18     [NUMBERS]
    Set Global Variable     ${CASE_3_BARCODE_ITEM_3_CASE_10_VALUE}
    ${ITEM_BARCODE_ITEM_3_CASE_10_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_3_CASE_10_VALUE}
    ${DIC_ITEM_3_CASE_10}      create dictionary       barcode=${ITEM_BARCODE_ITEM_3_CASE_10_VALUE}       parent1=${CASE_3_BARCODE_ITEM_3_CASE_10_VALUE}       parent2=${CASE_1_BARCODE_ITEM_1_CASE_10_VALUE}      parent3=${INVENTORY_1_BARCODE_ITEM_1_CASE_10_VALUE}          GTIN=${GTIN_ITEM_1_CASE_10_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_10_VALUE}      expiry=${EXPIRY_DATE_VALUE}            manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_3_CASE_10_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_3_CASE_10}       $.data[2]        ${DIC_ITEM_3_CASE_10}
    dump json to file       ${DATA_FILE_CASE_10_PATH_VALUE}           ${BARCODE_VALUES_ITEM_3_CASE_10_FROM_JSON}

    ${DATA_FILE_ITEM_4_CASE_10}        Load Json From File      ${DATA_FILE_CASE_10_PATH_VALUE}
    ${ITEM_BARCODE_ITEM_4_CASE_10_VALUE} =  Generate Random String     13     [NUMBERS]
    Set Global Variable     ${ITEM_BARCODE_ITEM_4_CASE_10_VALUE}
    ${DIC_ITEM_4_CASE_10}      create dictionary       barcode=${ITEM_BARCODE_ITEM_4_CASE_10_VALUE}       parent1=${CASE_3_BARCODE_ITEM_3_CASE_10_VALUE}       parent2=${CASE_1_BARCODE_ITEM_1_CASE_10_VALUE}       parent3=${INVENTORY_1_BARCODE_ITEM_1_CASE_10_VALUE}         GTIN=${GTIN_ITEM_1_CASE_10_VALUE}          batch_number=${BATCH_NUMBER_ITEM_1_CASE_10_VALUE}      expiry=${EXPIRY_DATE_VALUE}           manufacturing_date=${MANUFACTORING_DATE_VALUE}
    ${BARCODE_VALUES_ITEM_4_CASE_10_FROM_JSON}     update value to json        ${DATA_FILE_ITEM_4_CASE_10}       $.data[3]        ${DIC_ITEM_4_CASE_10}
    dump json to file       ${DATA_FILE_CASE_10_PATH_VALUE}           ${BARCODE_VALUES_ITEM_4_CASE_10_FROM_JSON}
