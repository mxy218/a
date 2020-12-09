.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CO7kpcAsEI0JRq4Sg4VMiBZSLnU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CO7kpcAsEI0JRq4Sg4VMiBZSLnU;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iput-boolean p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CO7kpcAsEI0JRq4Sg4VMiBZSLnU;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CO7kpcAsEI0JRq4Sg4VMiBZSLnU;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CO7kpcAsEI0JRq4Sg4VMiBZSLnU;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onAntennaStateChange$7$RadioModule$1(Z)V

    return-void
.end method
