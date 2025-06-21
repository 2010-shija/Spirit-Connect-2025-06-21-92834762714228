import Text "mo:base/Text";

query func getCounselingResponse(question : Text) : async Text {
  let lower = Text.toLowercase(question);

  if (Text.find(lower, "anxiety") != null) {
    return "📖 *Philippians 4:6–7* — 'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God.'";
  } else if (Text.find(lower, "fear") != null) {
    return "📖 *Isaiah 41:10* — 'Do not fear, for I am with you; do not be dismayed, for I am your God.'";
  } else if (Text.find(lower, "grief") != null or Text.find(lower, "loss") != null) {
    return "📖 *Psalm 34:18* — 'The Lord is close to the brokenhearted and saves those who are crushed in spirit.'";
  } else if (Text.find(lower, "marriage") != null) {
    return "📖 *Ephesians 5:25* — 'Husbands, love your wives, just as Christ loved the church and gave himself up for her.'";
  } else if (Text.find(lower, "purpose") != null) {
    return "📖 *Jeremiah 29:11* — 'For I know the plans I have for you, declares the Lord, plans to prosper you...'";
  } else if (Text.find(lower, "forgive") != null or Text.find(lower, "forgiveness") != null) {
    return "📖 *Colossians 3:13* — 'Forgive as the Lord forgave you.'";
  } else if (Text.find(lower, "pray") != null or Text.find(lower, "prayer") != null) {
    return "📖 *1 Thessalonians 5:17* — 'Pray without ceasing.'";
  } else if (Text.find(lower, "lonely") != null or Text.find(lower, "alone") != null) {
    return "📖 *Hebrews 13:5* — 'Never will I leave you; never will I forsake you.'";
  } else {
    return "🙏 I'm here to support you through God's Word. Ask about topics like anxiety, fear, grief, marriage, or purpose for Scripture-based encouragement.";
  }
};
