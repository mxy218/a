.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iPNL1BzYB0xOLiNRumbVqM98axU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;


# instance fields
.field private final synthetic f$0:Landroid/hardware/radio/ProgramList$Chunk;


# direct methods
.method public synthetic constructor <init>(Landroid/hardware/radio/ProgramList$Chunk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iPNL1BzYB0xOLiNRumbVqM98axU;->f$0:Landroid/hardware/radio/ProgramList$Chunk;

    return-void
.end method


# virtual methods
.method public final run(Landroid/hardware/radio/ITunerCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iPNL1BzYB0xOLiNRumbVqM98axU;->f$0:Landroid/hardware/radio/ProgramList$Chunk;

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onProgramListUpdated$4(Landroid/hardware/radio/ProgramList$Chunk;Landroid/hardware/radio/ITunerCallback;)V

    return-void
.end method
