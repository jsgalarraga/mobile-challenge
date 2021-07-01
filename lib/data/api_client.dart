import 'dart:convert';

import 'package:challenge/data/model/challenge_entity.dart';
import 'package:challenge/data/model/challenges_entity.dart';

class APIClient {
  List<ChallengeEntity> getChallenges() {
    return ChallengesEntity.fromJson(jsonDecode(json)).challenges;
  }

  final json = """
  {
  "challenges": [
    {
      "id": 144,
      "title": "Androgenic Fitness",
      "description": "This cardio routine is designed to increase muscle strength while decreasing testosterone levels. Additional benefits include increased heart health, muscle and joint health, and a reduction of stress. ",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "- Keeping track of sugar intake helps you determine whether you need to make adjustments in meals or medications to fuel your muscle and balance your testosterone.\n- Moderate cardio exercises (30 minutes, five days a week) will protect your heart health and won’t trigger excess testosterone production.\n- Aerobics, Tennis, and Swimming are activities that will periodically stabilize Testosterone. Combining cardio, like walking or swimming, with stretching or balance moves are all additional exercises to help balance testosterone.\n- Try resistance training with light weights or elastic bands.",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1534125641411-7b585a870768?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 15,
      "title": "Sprint Intervals",
      "description": "High-intensity interval training is a form of interval training, a cardiovascular exercise strategy, alternating short periods of intense anaerobic excercise with less intense recovery periods. This training technique is a time-efficient strategy to achieve health and performance benefits.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Though there is no universal HIIT session duration, these intense workouts typically last under 30 minutes, with times varying based on a participant's current fitness level. Our HIIT suggestion: \n- Start with a 5 minute warm up.\n- Complete 8 sets of 20–30 seconds of all-out sprinting.\n- Follow your sprints by 60–90 second walk.\n- Close out your workout with a 5 minute cool down.\n- We recommend this workout 2-3 times a week.",
      "daysToEffect": 35,
      "photoURL": "https://images.unsplash.com/photo-1461897104016-0b3b00cc81ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 4,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 133,
      "title": "Echinacea Supplementation",
      "description": "Today, it’s best known as an over-the-counter herbal remedy for the common cold or flu. It’s also used to treat pain, inflammation, migraines and other health issues.",
      "interests": [
        "Supplements"
      ],
      "instructions": "Echinacea supplement manufacturers recommend various dosages, so check the label or ask your doctor to recommend how much echinacea you should take. Most dosages suggest one or two capsules between two and four times per day for up to 10 days.",
      "daysToEffect": 10,
      "photoURL": "https://images.unsplash.com/photo-1559774664-92ad250465b1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
      "sortingScore": 5,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 135,
      "title": "Strength Training",
      "description": "Focus on building your larger skeletal muscles and pair two body parts for each workout. We recommend pairing your biceps and back, triceps and chest, and legs and shoulders. Be sure to increase your heart rate before beginning your heart rate and stretch before and after your session.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Exercises include: \n-Barbell Bench Press: 3-4 sets of 6-10 reps\n-Barbell Back Squat: 3-4 sets of 6-10 reps\n-Pull-Ups: 3-4 sets of 6-10 reps\n-Lying Hamstring Dumbbell Curls: 3-4 sets of 10-15 reps\n-Standing Overhead Press: 3-4 sets of 6-10 reps\n-Face Pulls: 3-4 sets of 10-15 reps\n-Drag Curls: 3-4 sets of 8-10 reps\n-Calf raises and/or abs circuit exercises can definitely be added as accessory movements.",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 140,
      "title": "Licorice root",
      "description": "Licorice is a flavorful substance that has been used in food and medicinal remedies for thousands of years. It is also known as “sweet root,” licorice root contains a compound that is about 50 times sweeter than sugar. It has been used in both Eastern and Western medicine to treat a variety of illnesses ranging from the common cold to liver disease. Licorice also affects the endocrine system because it contains isoflavones.",
      "interests": [
        "Supplements"
      ],
      "instructions": "Today, people use licorice root as a dietary supplement for digestive problems, testosterone disorders, cough, and bacterial and viral infections. It is easy find it in yout favorite store. You could also use it as a shampoo to try to avoid high testosterone effect in hair loss.",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1567270745280-1d31ffef9b01?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 142,
      "title": "Defend your diet",
      "description": "Probiotics strengthen the function of our kidneys and gut, which are key tools to establishing a foritified immune system.",
      "interests": [
        "Nutrition"
      ],
      "instructions": "Meals with probiotic foods including sauerkraut, kimchi, kombucha and yogurt are extremely beneficial since their fermentation process creates beneficial bacteria. Consuming 1 to 2 tablespoons of honey per day to decrease pollen sensitivity, reduce congestion and heal itchy, watery eyes and runny noses. ",
      "daysToEffect": 40,
      "photoURL": "https://images.unsplash.com/photo-1497146135827-2b04f80ccd23?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 145,
      "title": "Unwind through Movement",
      "description": "62% of adults effectively manage stress by exercising or walking. Increasing your heart rate through movement will help manage stress and rebalance your endocrine system.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "- Moderate cardio exercises (30 minutes, five days a week) will protect your heart health and won’t trigger excess testosterone production and helps manage stress. \n- Try and include gym equipment into your workouts such as parallel bars, leapfrog blocks, incline press machines, and balance beams. ",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1541626253827-15463f3479c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 157,
      "title": "Ease your Body and Mind",
      "description": "\"Soft\" excercises and proved medical and \"quiropractician\" treatment are great tools to help us settle and avoid a build up of stress.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": " Cryotherapy, will help us against probable inflamation due to high stress levels.\n- Red Light Therapy: You can find FDA-approved devices online that you can purchase and use at home.\n- Walking, running, and riding are helpful activities that relieve stress. Raising your heart rate through physical activity is a proven way to mitigate stress.\n- Settle down and unwind with a massage at your local wellness center.",
      "daysToEffect": 60,
      "photoURL": "https://images.unsplash.com/photo-1577344718665-3e7c0c1ecf6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 160,
      "title": "Maintain Temperature During Sleep ",
      "description": "Besides sunlight and dawn, one of the most important signals that our body uses to control \"vigil/dream\" state, is self-thermoregulation and enviroment temperature changes. Controlling your environment will help you establish a repetitive sleep-time schedule.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "The recommended sleeping temperature for adults is 60 to 72 degrees Fahrenheit. \n— Drink plenty of water during the day to keep your body hydrated and cool while you sleep. \n— Wear lightweight, loose-fitting clothing, preferably made from natural fibres like cotton or linen that absorb sweat and allow the skin to breathe. Avoid synthetic fabrics.\n— Keep humidity between 30 and 50 percent\n—Try and avoid your hands and feet from getting colder than the rest of your body.",
      "daysToEffect": 90,
      "photoURL": "https://images.unsplash.com/photo-1543250904-739eea54bfa7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 201,
      "title": "Spearmint",
      "description": "Spearmint is commonly associated with providing relief for indigestion, nausea, and gas symptoms. Additionally, Spearmint bolsters our immune system, assists in regulating sugar levels, and also aids in reducing stress levels. It's also the fastest way to drop testosterone levels for women.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Spearmint tea, essential oils and shampoos are great additions to promote rest and restore your mind and body. (For women) Two cups of spearmint tea a day will help reduce your testosterone levels.",
      "daysToEffect": 14,
      "photoURL": "https://images.unsplash.com/photo-1585882102256-75b09aa156ac?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 30,
      "title": "Melatonin Supplementation",
      "description": "Melatonin is both a main hormone in sleep regulation and a vital antioxidant. Melatonin also has anabolic effects and can assist in fortifying bodily defenses.",
      "interests": [
        "Supplements"
      ],
      "instructions": "Introduce low doses of this supplement and gradually increase over time, if needed. Too much of this supplement can lead to a drowsy sensation. Given your levels, we suggest supplementing with 5 milligrams at night. ",
      "daysToEffect": 30,
      "photoURL": "https://images.unsplash.com/photo-1564277590370-c657ef62e3be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 138,
      "title": "Saw Palmetto Supplements",
      "description": "Saw Palmetto is a small palm tree native to the Eastern Regions of the United States. This extract is a highly effective anti-androgen as it contains phytoesterols (plant cholesterol) and is typically suggested treatment for candidates with high testosterone levels. ",
      "interests": [
        "Supplements"
      ],
      "instructions": "Extracts of the fruit of saw palmetto are used in tablets or capsules. Saw palmetto has also been used as ground, dried, or whole berries, a liquid extract, or a tea. Saw palmetto appears most effective when taken in daily doses of 160–320 mg.",
      "daysToEffect": 14,
      "photoURL": "https://images.unsplash.com/photo-1517947081960-b6a9d2b6f448?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 139,
      "title": "Relax and Meditate",
      "description": "Mindfulness meditation originates from Buddhist teachings and is the most popular meditation technique in the West.  Yoga is also said to be a way of life and when practiced gives all-round benefits. Both techniques  promote mental clarity and calmness, increase body awareness, relieve chronic stress patterns, relax the mind and sharpen concentration. ",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Kundalini yoga is a physically active form of meditation which blends movements in conjunction with deep breathing and mantras. Try this, or a similar yoga pratice 3 times a week with sessions between 60 and 90 minutes.",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1501718037961-bb722c970f08?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 146,
      "title": "Cool Off",
      "description": "Colder temperatures help people think clearly and take the most of our fat energy expediture. Ice application is also the most common anti-inflamatory remedy in every immediate actuation against traumatism. Cold compress and temperatures are even good for skin and a great trainer for our immune system in fight against infections.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "-   Look out for a cryotherapy clinic near you. Try this once in a span of two weeks; after your hardest gym day.\n-   Moderately expose your body to colder environments. The amount of cold applied to the body should not outstrip the body’s ability to neutralize it.\n-   Five minutes of shivering is equivalent to 20 minutes of exercising.",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1569744013379-0cce812ff898?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 147,
      "title": "Avoid Heater Temperatures During Sleep",
      "description": "Besides sunlight and dawn, one of the most important signals that our body uses to control \"vigil/dream\" state, is self-thermoregulation and enviroment temperature changes. Controlling your environment will help you establish a repetitive sleep-time schedule.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "The recommended sleeping temperature for adults is 60 to 72 degrees Fahrenheit.  — Drink plenty of water during the day to keep your body hydrated and cool while you sleep.  — Wear lightweight, loose-fitting clothing, preferably made from natural fibres like cotton or linen that absorb sweat and allow the skin to breathe. Avoid synthetic fabrics..  — Keep humidity between 30 and 50 percent —In northern states where it gets really cold, it’s recommended to keep the room slightly warmer to accommodate night time drops in temperature. Try to avoid getting hands and feet colder. \"",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1587875690640-f6cf75e2c06b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 150,
      "title": "Rhodiola Rosea",
      "description": " Rhodiola rosea extract supplements fulfills important requirements as it's the main adaptogen approved by the HMPC/EMA for indicating 'stress'. It influences the release of stress hormones while boosting energy  and metabolism.",
      "interests": [
        "Supplements"
      ],
      "instructions": "The optimal dose of Rhodiola for reducing the symptoms of stress, fatigue or depression is 400– 600 milligrams. Since Rhodiola helps us feel energized, its suggested to take this supplement with breakfast or lunch.",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1543250904-99ff71ac4111?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 151,
      "title": "Ashwagandha",
      "description": "Ashwagandha root extract safely and effectively improves an individual's resistance towards stress by controlling how many hormones are released. It also show effects in improving strength and reducing inflamation.",
      "interests": [
        "Supplements"
      ],
      "instructions": "The optimal dosage of Ashwagandha is between 300-600 milligrams. This will help boost effects on your stress management and general health. ",
      "daysToEffect": 28,
      "photoURL": "https://images.unsplash.com/photo-1559821840-500ba931a1fb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1157&q=80",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 153,
      "title": "Dark and Hushed Nights",
      "description": "Light is a powerful guide for your body. In part through the connections between the eyes and the brain's biological timekeeper, light rays influence chemistry and behavior while keeping us in sync with the ebb and flow of the day. Scheduling and limiting light exposure at nights will help you sleep better, conserve energy and improve our defense system. ",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "-   Try and create an extremely dark and silent sleep environment.\n-   Avoid screens at night.\n-   Try and start your day by absorbing 5-10 minutes of natural sunlight; this will get you going on the right foot for the rest of your day.\n-   Introduce ear plugs and blue light glasses when looking at computer, phone, and TV screens.",
      "daysToEffect": 60,
      "photoURL": "https://images.unsplash.com/photo-1495234347927-15da3bd48ee6?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 155,
      "title": "Adrenal Energy Diet",
      "description": "A high or prolongued stressful situation can really uncharge our batteries (adrenal glands). With a balanced diet and emphasizing foods that restore the appropriate rebalancing of hormones, your body will find more clarity in those fight or flight situations.",
      "interests": [
        "Nutrition"
      ],
      "instructions": "\n- Enjoy 5-6 smaller meals a day  with at least 15-30grams of low-glycemic carbohydrates in each meal.\n- Include adequate high quality protein from fish, eggs and legumes.\n- Intake moderate caffeine and stimulants.",
      "daysToEffect": 20,
      "photoURL": "https://images.unsplash.com/photo-1516005492235-7a8d3a652dca?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 156,
      "title": "Defend Yourself from Stress",
      "description": "One of the \"easiest\" and natural ways of protecting against stressful situations is doing self-psycological work. Your brain has the best tools to avoid succumbing to stress.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "- Guided meditation, deep breathing, and yoga will help relax the mind and ground you.\n- Aromatherapy, or using essential oils and burning a scented candle may help reduce your feelings of stress and anxiety.\n- Enjoy your free time with artistic or braintraining hobbies.\n- Moderate caffeine and stimulants and increase water intake.",
      "daysToEffect": 60,
      "photoURL": "https://images.unsplash.com/photo-1554245026-181f2d8e79c3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 161,
      "title": "GABA Supplements",
      "description": "GABA is your brain’s main inhibitory neurotransmitter. It calms your neurons (brain cells) and keeps your brain from getting overexcited. With these supplements, you can regulate your sleep-wake cycle, reduce stress, and get some extra energy for your day-to-day tasks.",
      "interests": [
        "Supplements"
      ],
      "instructions": "In general, it is recommended that users begin with the lowest suggested dose, and gradually increase as needed. For sleep, stress and anxiety: 100-200 milligrams is typically recommended. Be bold and try GABA infused chewing gum.\n",
      "daysToEffect": 21,
      "photoURL": "https://images.unsplash.com/photo-1574043948184-144f2ef80fe3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 166,
      "title": "Avoid Alcohol ",
      "description": "One of the main disturbances that affects our sleep recovery and daily energy is alcohol intake. It may take up to a week to relinquish any sleep disruptions from alcohol. ",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "The recommended time to achieve a consistent sleep pattern while excluding alcohol from your diet is three months. Excessive alcohol can lead to restless nights, nausea, headaches, and dizziness. For relief, try Vitamin C, Vitmain B12, or PQQ supplements, ample amounts of water, and avoid antiinflammatory pills. ",
      "daysToEffect": 90,
      "photoURL": "https://images.unsplash.com/photo-1534951737255-5fbe5d90553c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 137,
      "title": "Reducing Your Androgenic Effects",
      "description": "With a balanced diet for products rich in PUFAs (Omega3/Omega6) and Phyoestrogens (plant compounds with antiandrogen effects), you can help reduce your high testosterone levels while improving brain clarity. ",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Limit your fat consumption to food richs in PUFAs like olive oil, sunflower seeds or oily fish as protein source. Also you can find fortified foods, such as certain brands of milk, eggs and juices.\nAvoid products high in refined sugars. High carb, animal fat and sugar transport or increase cholesterol where testosterone sometimes bind.\nTry to include as much as posible soy products in your diet, they are rich in phytoestrogens.\nAdditional tips. Reishi mushrooms had the strongest action in inhibiting testosterone between these kind of meal, also teas like spearmint or green tea will help you reduce testosterone level.",
      "daysToEffect": 40,
      "photoURL": "https://images.unsplash.com/photo-1552874624-448f857074ee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 148,
      "title": "Consistent Medium Distance Running ",
      "description": "Soft endurance training while gaining control of your heart rate will give you a boost in stamina, both physically and mentally. ",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Start with a gentle one mile jog, three times a week. As your build your cardiovascular capacity, increase your mileage, but continue to stay in a low heart rate zone. Include core strengthening in between your running days.",
      "daysToEffect": 40,
      "photoURL": "https://images.unsplash.com/photo-1574247450417-f44f1fe2cbbd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 152,
      "title": "Relieve Stress through Diet",
      "description": "Diet choices can make or break your stress levels. Choosing healthy foods positively impacts your stress level, creating a favorable hormone signaling in the brain, which supports satiety, mood regulation, sleep, and energy balance.",
      "interests": [
        "Nutrition"
      ],
      "instructions": "Include a low calorie meal plan, between 1200-1800 calories, depending on your body weight. \n- Introduce foods like dark chocolate, milk, and olive oil\n- Eat vegetables and legumes, which are high in fiber.\n- Limit or avoid soy products, corn/canola/safflower oil, processed meat, refined grain and sugars. \n- Limit alcohol intake.",
      "daysToEffect": 40,
      "photoURL": "https://images.unsplash.com/photo-1575740226055-b78dd5964d33?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 162,
      "title": "Set Your Circadian Rhythm",
      "description": "Circadian rhythms are physical, mental, and behavioral changes that follow a daily cycle. They respond primarily to light and darkness in an organism's environment. Sleeping at night and being awake during the day is an example of a light-related circadian rhythm.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "- Try to squeeze in 5 minutes of sunlight in the morning.\n- Avoid sleeping with the phone under your pillow or next to your bed and power down as many devices as possible.\n- Make sure there are no lights on while you sleep. If necessary, use blackout curtains or an eye mask to block ambient light.\n- Try “Corpse Pose”, by lying down still and flat on your back, focusing only on your breath. Avoid checking work emails, watching TV or going on social media. Instead, substitute that with meditating, reading, or listening to a relaxing podcast before bed.",
      "daysToEffect": 35,
      "photoURL": "https://images.unsplash.com/photo-1579906634518-1d3bbcde4264?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 163,
      "title": "Unwind at Night",
      "description": "Relaxing your mind and body before bed is an effective way to improve recovery and boost your melatonin levels. Daily refreshers, or mid-day naps can also help reenergize and brighten your day. ",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Enjoy a relaxing warm bath, supplemented with lavender essential oils or other relaxing fragrances. This all natural solution helps boost melatonin levels right before getting a good nights rest. ",
      "daysToEffect": 60,
      "photoURL": "https://images.unsplash.com/photo-1552143233-c29bb1292978?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    },
    {
      "id": 170,
      "title": "Energize your body",
      "description": " Scientists recognized that exposure to the ultraviolet radiation (UVR) in sunlight has both beneficial and deleterious effects on human health.",
      "interests": [
        "Lifestyle"
      ],
      "instructions": "Sources suggest that as few as 8–15 minutes of Vitamin D exposure is plenty to absorb essential nutrients for fair-skinned individuals. Those with darker skin may need more time.\n- UV lamps mimic the action of the sun and can be especially helpful if sun exposure is limited due to geography or time indoors.\n- To protect yourself, avoid the summer sunshine, especially between 10 a.m. and 2 p.m. ",
      "daysToEffect": 60,
      "photoURL": "https://images.unsplash.com/photo-1508854599553-37f84084d456?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      "sortingScore": 0,
      "author": {
        "id": 1,
        "name": "Base Team",
        "photoURL": "https://get-base.com/img/squared_logo_tiny.png"
      }
    }
  ]
}
  """;
}
