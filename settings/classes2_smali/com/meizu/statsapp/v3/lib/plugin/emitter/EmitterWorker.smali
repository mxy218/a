.class public abstract Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;
.super Ljava/lang/Object;
.source "EmitterWorker.java"


# instance fields
.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/emitter/EmitterWorker;->context:Landroid/content/Context;

    return-void
.end method
