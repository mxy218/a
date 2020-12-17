.class Landroidx/preference/MzListPreferenceDialogFragmentCompat$1;
.super Ljava/lang/Object;
.source "MzListPreferenceDialogFragmentCompat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/MzListPreferenceDialogFragmentCompat;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/MzListPreferenceDialogFragmentCompat;


# direct methods
.method constructor <init>(Landroidx/preference/MzListPreferenceDialogFragmentCompat;)V
    .registers 2

    .line 84
    iput-object p1, p0, Landroidx/preference/MzListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MzListPreferenceDialogFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 87
    iget-object p0, p0, Landroidx/preference/MzListPreferenceDialogFragmentCompat$1;->this$0:Landroidx/preference/MzListPreferenceDialogFragmentCompat;

    iput p2, p0, Landroidx/preference/MzListPreferenceDialogFragmentCompat;->mClickedDialogEntryIndex:I

    const/4 p2, -0x1

    .line 91
    invoke-virtual {p0, p1, p2}, Landroidx/preference/MzPreferenceDialogFragmentCompat;->onClick(Landroid/content/DialogInterface;I)V

    .line 93
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
