.class public final synthetic Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$mkiQxR7x6pr3eBeJFIlov-WnSjM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

.field private final synthetic f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$mkiQxR7x6pr3eBeJFIlov-WnSjM;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$mkiQxR7x6pr3eBeJFIlov-WnSjM;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$mkiQxR7x6pr3eBeJFIlov-WnSjM;->f$0:Lcom/android/server/broadcastradio/hal2/RadioModule$1;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$mkiQxR7x6pr3eBeJFIlov-WnSjM;->f$1:Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->lambda$onProgramListUpdated$5$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    return-void
.end method
