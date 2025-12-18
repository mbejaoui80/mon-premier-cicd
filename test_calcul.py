# Un test très simple pour notre robot CI/CD
def test_addition():
    resultat = 1 + 1
    assert resultat == 2
    print("Test réussi : 1 + 1 fait bien 2 !")

if __name__ == "__main__":
    test_addition()