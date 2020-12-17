.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;
.super Lcom/android/systemui/statusbar/policy/SignalController$State;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MobileState"
.end annotation


# instance fields
.field airplaneMode:Z

.field carrierNetworkChangeMode:Z

.field dataConnected:Z

.field dataSim:Z

.field defaultDataOff:Z

.field imsRegistered:Z

.field inPhoneCall:Z

.field isDefault:Z

.field isEmergency:Z

.field networkName:Ljava/lang/String;

.field networkNameData:Ljava/lang/String;

.field roaming:Z

.field userSetup:Z

.field videoCapable:Z

.field voiceCapable:Z

.field voiceLevel:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1486
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SignalController$State;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V
    .registers 3

    .line 1509
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->copyFrom(Lcom/android/systemui/statusbar/policy/SignalController$State;)V

    .line 1510
    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    .line 1511
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    .line 1512
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1513
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1514
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    .line 1515
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    .line 1516
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    .line 1517
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    .line 1518
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    .line 1519
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    .line 1520
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    .line 1521
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    .line 1522
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    .line 1523
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    .line 1524
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    .line 1526
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    .line 1527
    iget p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .line 1558
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    check-cast p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1559
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    .line 1560
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    if-ne v0, v1, :cond_72

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    if-ne v0, v1, :cond_72

    iget p1, p1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    if-ne p1, p0, :cond_72

    const/4 p0, 0x1

    goto :goto_73

    :cond_72
    const/4 p0, 0x0

    :goto_73
    return p0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .registers 4

    .line 1533
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/SignalController$State;->toString(Ljava/lang/StringBuilder;)V

    const/16 v0, 0x2c

    .line 1534
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataSim="

    .line 1535
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkName="

    .line 1536
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "networkNameData="

    .line 1537
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "dataConnected="

    .line 1538
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "roaming="

    .line 1539
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isDefault="

    .line 1540
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "isEmergency="

    .line 1541
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "airplaneMode="

    .line 1542
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->airplaneMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "carrierNetworkChangeMode="

    .line 1543
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1544
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userSetup="

    .line 1545
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "defaultDataOff="

    .line 1546
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->defaultDataOff:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "imsRegistered="

    .line 1547
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->imsRegistered:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "voiceCapable="

    .line 1548
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceCapable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "videoCapable="

    .line 1549
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->videoCapable:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "inPhoneCall"

    .line 1551
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->inPhoneCall:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "voiceLevel"

    .line 1552
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->voiceLevel:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
