/* Objective function */
max: 385L1 +385L2 +385L3 + 330M1 +330M2 +330M3 +275S1 +275S2 +275S3;

/* Constraints */
Plant1: +L1 +M1 +S1 <= 750;
Plant2: +L2 +M2 +S2 <= 900;
Plant3: +L3 +M3 +S3 <= 450;

Plant1: +20L1 +15M1 +12S1 <= 13000;
Plant2: +20L2 +15M2 +12S2 <= 12000;
Plant3: +20L3 +15M3 +12S3 <= 5000;

Plant1: +L1 +L2 +L3 <= 900;
Plant2: +M1 +M2 +M3 <= 1200;
Plant3: +S1 +S2 +S3 <= 750;
