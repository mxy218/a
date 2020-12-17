.class public Lcom/meizu/settings/display/MzFontPreference;
.super Landroid/preference/ListPreference;
.source "MzFontPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/MzFontPreference$FontAdapter;
    }
.end annotation


# instance fields
.field private final mCurConfig:Landroid/content/res/Configuration;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/display/MzFontPreference;->mCurConfig:Landroid/content/res/Configuration;

    .line 29
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/display/MzFontPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 9

    .line 37
    new-instance v6, Lcom/meizu/settings/display/MzFontPreference$FontAdapter;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    const v2, 0x7f0d01d7

    const v3, 0x7f0a072d

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/display/MzFontPreference$FontAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/preference/ListPreference;)V

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p1, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method
