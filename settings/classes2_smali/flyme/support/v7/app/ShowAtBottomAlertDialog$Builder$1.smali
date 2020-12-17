.class Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$1;
.super Ljava/lang/Object;
.source "ShowAtBottomAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;->create()Lflyme/support/v7/app/ShowAtBottomAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder$1;->this$0:Lflyme/support/v7/app/ShowAtBottomAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 126
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
