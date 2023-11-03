-- NOMES: CECÍLIA BOTELHO E HEITOR AVILA;
LIBRARY IEEE;
USE ieee.std_logic_1164.all;
ENTITY projetoSemaforo IS
PORT (
 ruaA: in std_logic;
 ruaB: in std_logic;
 ruaC: in std_logic;
 ruaD: in std_logic;
 sinaleiraLO: out std_logic;
 sinaleiraNS: out std_logic
);
END projetoSemaforo;
ARCHITECTURE arq_projetoSemaforo OF projetoSemaforo IS
SIGNAL logicaLO, logicaNS: std_logic;
BEGIN
 logicaLO <= not(ruaA or ruaB) or ((ruaC or ruaD) and not (ruaA and ruaB)) or (ruaC and ruaD);
 logicaNS <= not(logicaLO);
 sinaleiraLO <= logicaLO;
 sinaleiraNS <= logicaNS;
END arq_projetoSemaforo;
