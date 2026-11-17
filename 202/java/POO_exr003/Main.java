// import java.util.*;

public class Main {
    public static void main(String[] args) {
      Cliente cliente1 = new Cliente();

      cliente1.cadastrar("Duzinho", 15, "111.111.111-11", "67 99912-1234", "CLI-001", "Rua das Flores, 123");
      cliente1.exibirDados();

      Veterinario veterinario1 = new Veterinario();

      veterinario1.cadastrar("Julio", 15, "222.222.222-22", "67 99442-1234", "CRMV-MS 1234", "Clínica geral");
      veterinario1.exibirDados();

      Cliente cliente2 = new Cliente("Bibi", 16, "000.000.000-11", "47-9999-0000", "ABC-198", "Concórdia");

      cliente2.exibirDados();

      Cachorro cachorro1 = new Cachorro("Cookie", 1, 2.30, "Lulu da Pomerânia", "Pequeno");
      cachorro1.exibirDados();
      System.out.println(cachorro1.latir());
      cachorro1.vacinar();

      Gato gato1 = new Gato("Mima", 7, 3.40, "Marrom", true);
      gato1.exibirDados();

      Gato gato2 = new Gato();
      gato2.cadastrar("Mima", 7, 3.40, "Marrom", true);
      gato2.exibirDados();
      System.out.println(gato2.miar());
      gato2.vacinar();
    }
}