.class public final synthetic Lcom/meizu/server/-$$Lambda$WKcjHmJDCjQ2p-jHZy5rFBEiLa0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/meizu/server/FlymePermissionDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/meizu/server/FlymePermissionDialog;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/meizu/server/-$$Lambda$WKcjHmJDCjQ2p-jHZy5rFBEiLa0;->f$0:Lcom/meizu/server/FlymePermissionDialog;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/meizu/server/-$$Lambda$WKcjHmJDCjQ2p-jHZy5rFBEiLa0;->f$0:Lcom/meizu/server/FlymePermissionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
