.class public Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;
.super Ljava/lang/Object;
.source "SmartTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmartTouchShowStateHelper"
.end annotation


# instance fields
.field public isForceHide:Z

.field public isKeyguard:Z

.field public isLand:Z

.field public isLid:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 656
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    .line 657
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLid:Z

    .line 658
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    .line 659
    iput-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    return-void
.end method


# virtual methods
.method public isShowState()Z
    .registers 2

    .line 662
    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLid:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    if-nez v0, :cond_12

    iget-boolean p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartTouchShowStateHelper{isLand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isLid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isKeyguard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isKeyguard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isForceHide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$SmartTouchShowStateHelper;->isForceHide:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
