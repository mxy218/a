.class Lcom/android/server/broadcastradio/hal2/RadioModule$1;
.super Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/RadioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V
    .registers 2

    .line 74
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAntennaStateChange$6(ZLandroid/hardware/radio/ITunerCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method static synthetic lambda$onParametersUpdated$8(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$onProgramListUpdated$4(Landroid/hardware/radio/ProgramList$Chunk;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    return-void
.end method

.method static synthetic lambda$onTuneFailed$0(ILandroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ITunerCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-interface {p2, p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAntennaStateChange$7$RadioModule$1(Z)V
    .registers 4

    .line 106
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$202(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 107
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$isrDghFyiU3A-wFTahTqlalIBVo;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$isrDghFyiU3A-wFTahTqlalIBVo;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 108
    return-void
.end method

.method public synthetic lambda$onCurrentProgramInfoChanged$2$RadioModule$1(Landroid/hardware/radio/ITunerCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$300(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public synthetic lambda$onCurrentProgramInfoChanged$3$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$302(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    .line 88
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk;

    invoke-direct {v0, p0}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iKwhPFaskH3rDDMX9COUVaItuzk;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;)V

    invoke-static {p1, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 89
    return-void
.end method

.method public synthetic lambda$onParametersUpdated$9$RadioModule$1(Ljava/util/ArrayList;)V
    .registers 4

    .line 114
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$VLrys0HkTmiHG7kZ1NCqVx7lA0s;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$VLrys0HkTmiHG7kZ1NCqVx7lA0s;-><init>(Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 116
    return-void
.end method

.method public synthetic lambda$onProgramListUpdated$5$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 4

    .line 97
    nop

    .line 98
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iPNL1BzYB0xOLiNRumbVqM98axU;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$iPNL1BzYB0xOLiNRumbVqM98axU;-><init>(Landroid/hardware/radio/ProgramList$Chunk;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 100
    return-void
.end method

.method public synthetic lambda$onTuneFailed$1$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V
    .registers 5

    .line 78
    nop

    .line 79
    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$59H6y7GZA-_7GDPEgL2E26h7WiE;

    invoke-direct {v1, p2, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$59H6y7GZA-_7GDPEgL2E26h7WiE;-><init>(ILandroid/hardware/radio/ProgramSelector;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    .line 81
    return-void
.end method

.method public onAntennaStateChange(Z)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CO7kpcAsEI0JRq4Sg4VMiBZSLnU;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$CO7kpcAsEI0JRq4Sg4VMiBZSLnU;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 109
    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$DJu-ip-lyw364IIvgG3EXOTSGvY;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)V"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Zuu6z2oPYUITcmI7bBh9YX3UmjQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$Zuu6z2oPYUITcmI7bBh9YX3UmjQ;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$mkiQxR7x6pr3eBeJFIlov-WnSjM;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$mkiQxR7x6pr3eBeJFIlov-WnSjM;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/broadcastradio/hal2/-$$Lambda$RadioModule$1$oUY5YASjXdzm7j6NkozI56hILxU;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method
