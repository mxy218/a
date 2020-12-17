.class public final synthetic Lcom/android/server/am/-$$Lambda$OomAdjuster$TycrMfpYu_LfNv_I2DM8ANoONEE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$OomAdjuster$TycrMfpYu_LfNv_I2DM8ANoONEE;->f$0:Lcom/android/server/am/OomAdjuster;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$OomAdjuster$TycrMfpYu_LfNv_I2DM8ANoONEE;->f$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OomAdjuster;->lambda$new$0$OomAdjuster(Landroid/os/Message;)Z

    move-result p1

    return p1
.end method
