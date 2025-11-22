curl "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent" ^
  -H "x-goog-api-key: %GEMINI_API_KEY%" ^
  -H "Content-Type: application/json" ^
  -X POST ^
  -d "{ \"contents\": [ { \"parts\": [ { \"text\": \"A que se refiere el uso de inteligencia artificial generativa para imagenes\" } ] } ] }"