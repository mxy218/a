.class public Lcom/meizu/settings/development/AutofillMaxPartitionsPreference;
.super Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;
.source "AutofillMaxPartitionsPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "autofill_max_partitions_size"

    const/16 v1, 0xa

    .line 11
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/meizu/settings/development/AbstractGlobalSettingsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;I)V

    return-void
.end method
