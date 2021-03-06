package ru.job4j.applications;

public class StubInput implements Input {

    private String[] params;
    private int paramsNum = 0;

    StubInput(String[] parametersOfInput) {
        this.params = parametersOfInput;
    }

    /**
     * Имитация выбора меню.
     * @return пункт меню
     */
    public String showMenu() {
        if (paramsNum == 0) {
            paramsNum++;
            return params[0];
        } else {
            return params[params.length - 1];
        }
    }

    /**
     * Имитация запроса данных от пользователя.
     * @param question запрос
     * @return ответ на запрос
     */
    public String ask(String question) {
        return params[paramsNum++];
    }

    public int ask(String question, int[] range) {
        int key = Integer.valueOf(this.ask(question));
        boolean exist = false;
        for (int value : range) {
            if (key == value) {
                exist = true;
                break;
            }
        }
        return exist ? key : -1;
    }
}
