.class Lcom/android/settings/accessibility/HearingAidDialogFragment$2;
.super Ljava/lang/Object;
.source "HearingAidDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/HearingAidDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/HearingAidDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/HearingAidDialogFragment;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/settings/accessibility/HearingAidDialogFragment$2;->this$0:Lcom/android/settings/accessibility/HearingAidDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 45
    iget-object p0, p0, Lcom/android/settings/accessibility/HearingAidDialogFragment$2;->this$0:Lcom/android/settings/accessibility/HearingAidDialogFragment;

    invoke-static {p0}, Lcom/android/settings/accessibility/HearingAidDialogFragment;->access$000(Lcom/android/settings/accessibility/HearingAidDialogFragment;)V

    return-void
.end method
