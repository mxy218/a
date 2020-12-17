.class public Lcom/android/settings/widget/PreferenceCategoryController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PreferenceCategoryController.java"


# instance fields
.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iput-object p2, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mKey:Ljava/lang/String;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    if-eqz v0, :cond_27

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_27

    .line 49
    :cond_b
    iget-object p0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 50
    invoke-virtual {v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    return p0

    :cond_25
    const/4 p0, 0x2

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x3

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;)",
            "Lcom/android/settings/widget/PreferenceCategoryController;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_c

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/PreferenceCategoryController;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    return-object p0
.end method
