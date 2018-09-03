import sqlite3


def gather_graph_data():
    db = sqlite3.connect('./casen.db')

    cursor = db.cursor()

    query = '''SELECT cd.code, cd.remunerationAvg, dm.e0a4, dm.e5a9, dm.e10a14,
    dm.e15a19, dm.e20a24, dm.e25a29,dm.e30a34, dm.e35a39, dm.e40a44, dm.e45a49,
    dm.e60a64, dm.e65a69, dm.e70a74, dm.e75a79, dm.e80omas
    FROM casen_data as cd, demografia as dm
    WHERE dm.codigocomuna=cd.code;
    '''

    age_ranges = tuple(i for i in range(2, 80, 5))
    results = cursor.execute(query).fetchall()
    graph_data = []
    for _, remuneration_avg, *ranges in results:
        ages_count = list(ct * age_rg for ct, age_rg in zip(age_ranges, ranges))
        avg_ages = sum(ages_count) / sum(ranges)
        graph_data.append((avg_ages, remuneration_avg))
    return sorted(graph_data, key=lambda items: items[0])


if __name__ == "__main__":
    print(gather_graph_data())