.class public Lcom/meizu/settings/display/TimeSelectLegal;
.super Ljava/lang/Object;
.source "TimeSelectLegal.java"


# instance fields
.field private mEndHour:I

.field private mEndMinute:I

.field private mStartHour:I

.field private mStartMinute:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartHour:I

    .line 13
    iput v0, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartMinute:I

    .line 14
    iput v0, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndHour:I

    .line 15
    iput v0, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndMinute:I

    return-void
.end method


# virtual methods
.method public isValidated(IILcom/meizu/settings/display/BluelightTimeSelectPreference;)Z
    .registers 9

    .line 39
    instance-of p3, p3, Lcom/meizu/settings/display/BluelightStartTimeSelectPreference;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, ",  newMinute="

    const-string v3, "TimeSelectLegal validate time, newHour="

    const-string v4, "TimeSelectLegal"

    if-eqz p3, :cond_42

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEndHour="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndHour:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  mEndMinute="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndMinute:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget p3, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndHour:I

    if-ne p1, p3, :cond_40

    iget p0, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndMinute:I

    if-eq p2, p0, :cond_77

    :cond_40
    :goto_40
    move v0, v1

    goto :goto_77

    .line 43
    :cond_42
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mStartHour="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartHour:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  mStartMinute="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartMinute:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget p3, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartHour:I

    if-ne p1, p3, :cond_40

    iget p0, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartMinute:I

    if-eq p2, p0, :cond_77

    goto :goto_40

    :cond_77
    :goto_77
    return v0
.end method

.method public setEndTime(II)V
    .registers 3

    .line 23
    iput p1, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndHour:I

    .line 24
    iput p2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndMinute:I

    return-void
.end method

.method public setNewTime(IILcom/meizu/settings/display/BluelightTimeSelectPreference;)V
    .registers 4

    .line 28
    instance-of p3, p3, Lcom/meizu/settings/display/BluelightStartTimeSelectPreference;

    if-eqz p3, :cond_9

    .line 29
    iput p1, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartHour:I

    .line 30
    iput p2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartMinute:I

    goto :goto_d

    .line 32
    :cond_9
    iput p1, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndHour:I

    .line 33
    iput p2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mEndMinute:I

    :goto_d
    return-void
.end method

.method public setStartTime(II)V
    .registers 3

    .line 18
    iput p1, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartHour:I

    .line 19
    iput p2, p0, Lcom/meizu/settings/display/TimeSelectLegal;->mStartMinute:I

    return-void
.end method
