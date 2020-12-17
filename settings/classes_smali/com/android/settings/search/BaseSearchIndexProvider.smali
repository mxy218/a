.class public Lcom/android/settings/search/BaseSearchIndexProvider;
.super Ljava/lang/Object;
.source "BaseSearchIndexProvider.java"

# interfaces
.implements Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x203

    .line 163
    :try_start_7
    invoke-static {p1, p2, v0}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    .line 165
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez p3, :cond_27

    const-string/jumbo v1, "searchable"

    const/4 v2, 0x1

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_27
    const-string v1, "key"

    .line 167
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_30} :catch_31
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_30} :catch_31

    goto :goto_f

    .line 171
    :catch_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error parsing non-indexable from xml "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSearchIndex"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-object p0
.end method

.method private getNonIndexableKeysFromXml(Landroid/content/Context;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_2e

    .line 145
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/SearchIndexableResource;

    .line 147
    iget v2, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 148
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object v2

    .line 147
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_17

    :cond_2d
    return-object v1

    .line 143
    :cond_2e
    :goto_2e
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->isPageSearchEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 73
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7d

    .line 76
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 77
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 78
    instance-of v1, p1, Lcom/android/settings/core/PreferenceControllerMixin;

    if-eqz v1, :cond_3f

    .line 79
    check-cast p1, Lcom/android/settings/core/PreferenceControllerMixin;

    .line 80
    invoke-interface {p1, v0}, Lcom/android/settings/core/PreferenceControllerMixin;->updateNonIndexableKeys(Ljava/util/List;)V

    goto :goto_29

    .line 81
    :cond_3f
    instance-of v1, p1, Lcom/android/settings/core/BasePreferenceController;

    if-eqz v1, :cond_49

    .line 82
    check-cast p1, Lcom/android/settings/core/BasePreferenceController;

    invoke-virtual {p1, v0}, Lcom/android/settings/core/BasePreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    goto :goto_29

    .line 85
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/settings/core/PreferenceControllerMixin;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " treating the key non-indexable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSearchIndex"

    .line 85
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_7d
    return-object v0
.end method

.method public getNonIndexableKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/search/BaseSearchIndexProvider;->getKeysFromXml(Landroid/content/Context;IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 99
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 100
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_43

    .line 103
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 104
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/provider/SearchIndexableResource;

    .line 105
    iget v2, v2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 106
    invoke-static {p1, v2}, Lcom/android/settings/core/PreferenceControllerListHelper;->getPreferenceControllersFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1b

    .line 108
    :cond_31
    invoke-static {v1, v0}, Lcom/android/settings/core/PreferenceControllerListHelper;->filterControllers(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3f

    .line 112
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_3f
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_43
    :goto_43
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
