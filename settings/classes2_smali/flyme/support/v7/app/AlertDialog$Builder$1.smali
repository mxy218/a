.class Lflyme/support/v7/app/AlertDialog$Builder$1;
.super Ljava/lang/Object;
.source "AlertDialog.java"

# interfaces
.implements Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/app/AlertDialog$Builder;->create()Lflyme/support/v7/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory<",
        "Lflyme/support/v7/app/AlertDialog;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lflyme/support/v7/app/AlertDialog$Builder;)V
    .registers 2

    .line 965
    iput-object p1, p0, Lflyme/support/v7/app/AlertDialog$Builder$1;->this$0:Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newDialog(Landroid/content/Context;I)Lflyme/support/v7/app/AlertDialog;
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 968
    new-instance p1, Lflyme/support/v7/app/AlertDialog;

    iget-object p2, p0, Lflyme/support/v7/app/AlertDialog$Builder$1;->this$0:Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-static {p2}, Lflyme/support/v7/app/AlertDialog$Builder;->access$000(Lflyme/support/v7/app/AlertDialog$Builder;)Lflyme/support/v7/app/AlertController$AlertParams;

    move-result-object p2

    iget-object p2, p2, Lflyme/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lflyme/support/v7/app/AlertDialog$Builder$1;->this$0:Lflyme/support/v7/app/AlertDialog$Builder;

    invoke-static {p0}, Lflyme/support/v7/app/AlertDialog$Builder;->access$100(Lflyme/support/v7/app/AlertDialog$Builder;)I

    move-result p0

    invoke-direct {p1, p2, p0}, Lflyme/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method
