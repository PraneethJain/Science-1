import matplotlib.pyplot as plt


def step(x: float, alpha: float) -> float:
    return alpha * x * (1 - x)


def generate(x0: float, alpha: float, generations: int = 50) -> list[float]:
    result = [x0] * generations
    for i in range(1, generations):
        result[i] = step(result[i - 1], alpha)
    return result


if __name__ == "__main__":
    plt.plot(generate(x0=0.1, alpha=0.8), label=r"$x_0 = 0.1, \alpha=0.8$")
    plt.plot(generate(x0=0.1, alpha=1.5), label=r"$x_0 = 0.1, \alpha=1.5$")
    plt.plot(generate(x0=0.5, alpha=1.5), label=r"$x_0 = 0.5, \alpha=1.5$")
    plt.plot(generate(x0=0.5, alpha=0.8), label=r"$x_0 = 0.5, \alpha=0.8$")
    plt.plot(generate(x0=0.001, alpha=3.2), label=r"$x_0 = 0.001, \alpha=3.2$")

    plt.xlabel("Time")
    plt.ylabel("Population")
    plt.legend()

    plt.savefig("plot.png")
