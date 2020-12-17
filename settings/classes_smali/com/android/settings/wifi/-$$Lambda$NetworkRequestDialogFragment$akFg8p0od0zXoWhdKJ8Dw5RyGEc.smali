.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$akFg8p0od0zXoWhdKJ8Dw5RyGEc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

.field private final synthetic f$1:Landroid/app/AlertDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/app/AlertDialog;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$akFg8p0od0zXoWhdKJ8Dw5RyGEc;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iput-object p2, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$akFg8p0od0zXoWhdKJ8Dw5RyGEc;->f$1:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$akFg8p0od0zXoWhdKJ8Dw5RyGEc;->f$0:Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    iget-object p0, p0, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$akFg8p0od0zXoWhdKJ8Dw5RyGEc;->f$1:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->lambda$onCreateDialog$3$NetworkRequestDialogFragment(Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method
