.class public Lcom/android/settings/CustomListPreference;
.super Landroidx/preference/ListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CustomListPreference$ConfirmDialogFragment;,
        Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected getConfirmationMessage(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method protected isAutoClosePreference()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected onDialogClosed(Z)V
    .registers 2

    return-void
.end method

.method protected onDialogCreated(Landroid/app/Dialog;)V
    .registers 2

    return-void
.end method

.method protected onDialogStateRestored(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    return-void
.end method
