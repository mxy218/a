.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$VLrys0HkTmiHG7kZ1NCqVx7lA0s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field private final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$VLrys0HkTmiHG7kZ1NCqVx7lA0s;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$VLrys0HkTmiHG7kZ1NCqVx7lA0s;->f$0:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onParametersUpdated$8(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
