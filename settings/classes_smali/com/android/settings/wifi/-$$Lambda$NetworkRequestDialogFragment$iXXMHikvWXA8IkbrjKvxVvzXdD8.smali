.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$iXXMHikvWXA8IkbrjKvxVvzXdD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field private final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/app/AlertDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$iXXMHikvWXA8IkbrjKvxVvzXdD8;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$iXXMHikvWXA8IkbrjKvxVvzXdD8;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$iXXMHikvWXA8IkbrjKvxVvzXdD8;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$iXXMHikvWXA8IkbrjKvxVvzXdD8;->f$1:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$4$NetworkRequestDialogFragment(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method
