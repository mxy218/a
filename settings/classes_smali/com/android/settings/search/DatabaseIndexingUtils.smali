.class public Lcom/android/settings/search/DatabaseIndexingUtils;
.super Ljava/lang/Object;
.source "DatabaseIndexingUtils.java"


# direct methods
.method public static getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    const-string v0, "IndexingUtil"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "SEARCH_INDEX_DATA_PROVIDER"

    .line 37
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/search/Indexable$SearchIndexProvider;
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_f} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_f} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_f} :catch_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    const-string p0, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    .line 47
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :catch_16
    const-string p0, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    .line 45
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :catch_1c
    const-string p0, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    :catch_22
    const-string p0, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    .line 40
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return-object v1
.end method
