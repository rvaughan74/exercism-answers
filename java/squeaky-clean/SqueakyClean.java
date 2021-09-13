import java.lang.StringBuilder;

class SqueakyClean {
    static String clean(String identifier) {

        StringBuilder result = new StringBuilder(identifier);

        for (int i = 0; i < result.length(); i++) {

            char current = result.charAt(i);
            String unicode = Character.UnicodeBlock.of(current).toString();
            /*
             * unicode.equals("GREEK") is the same as (current >= '\u0370' && current <=
             * '\u03FF') || (current >= '\u1F00' && current <= '\u1FFF')
             */

            if (current == ' ') {

                result.setCharAt(i, '_');
            }
            else if (Character.isISOControl(current)) {

                result.replace(i, i + 1, "CTRL");
            }
            else if (!Character.isLetter(current) || (unicode.equals("GREEK") && Character.isLowerCase(current))) {// handle
                // deletions
                if (current == '-') {// handle kebab case

                    int next = i + 1;
                    result.setCharAt(next, Character.toUpperCase(result.charAt(next)));
                }
                result.deleteCharAt(i);
                i--;
            }
        }

        return result.toString();
    }
}
