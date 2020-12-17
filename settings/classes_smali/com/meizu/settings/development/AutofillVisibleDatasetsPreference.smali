.class public final Lcom/meizu/settings/development/AutofillVisibleDatasetsPreference;
.super Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;
.source "AutofillVisibleDatasetsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "autofill_max_visible_datasets"

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V

    return-void
.end method
