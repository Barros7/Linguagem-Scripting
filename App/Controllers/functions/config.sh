#!/bin/bash
    echo "Testando"
    chmod +x ../Controllers/functions/*.sh
    chmod +x ../Views/*.sh
    dos2unix ../Controllers/functions/*.sh
    dos2unix ../Views/*.sh
        echo "Funcionou"
