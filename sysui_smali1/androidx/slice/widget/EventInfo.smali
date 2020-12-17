.class public Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/EventInfo$SliceButtonPosition;,
        Landroidx/slice/widget/EventInfo$SliceActionType;,
        Landroidx/slice/widget/EventInfo$SliceRowType;
    }
.end annotation


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public actionType:I

.field public rowIndex:I

.field public rowTemplateType:I

.field public sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput p1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    .line 219
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 220
    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    .line 221
    iput p4, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    const/4 p1, -0x1

    .line 223
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 224
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 225
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    .line 226
    iput p1, p0, Landroidx/slice/widget/EventInfo;->state:I

    return-void
.end method

.method private static actionToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_33

    const/4 v0, 0x1

    if-eq p0, v0, :cond_30

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x4

    if-eq p0, v0, :cond_27

    const/4 v0, 0x5

    if-eq p0, v0, :cond_24

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_24
    const-string p0, "SELECTION"

    return-object p0

    :cond_27
    const-string p0, "SEE MORE"

    return-object p0

    :cond_2a
    const-string p0, "CONTENT"

    return-object p0

    :cond_2d
    const-string p0, "SLIDER"

    return-object p0

    :cond_30
    const-string p0, "BUTTON"

    return-object p0

    :cond_33
    const-string p0, "TOGGLE"

    return-object p0
.end method

.method private static positionToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-string p0, "CELL"

    return-object p0

    :cond_1e
    const-string p0, "END"

    return-object p0

    :cond_21
    const-string p0, "START"

    return-object p0
.end method

.method private static rowTypeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2e

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown row type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_16  #0x6
    const-string p0, "SELECTION"

    return-object p0

    :pswitch_19  #0x5
    const-string p0, "PROGRESS"

    return-object p0

    :pswitch_1c  #0x4
    const-string p0, "SLIDER"

    return-object p0

    :pswitch_1f  #0x3
    const-string p0, "TOGGLE"

    return-object p0

    :pswitch_22  #0x2
    const-string p0, "MESSAGING"

    return-object p0

    :pswitch_25  #0x1
    const-string p0, "GRID"

    return-object p0

    :pswitch_28  #0x0
    const-string p0, "LIST"

    return-object p0

    :pswitch_2b  #0xffffffff
    const-string p0, "SHORTCUT"

    return-object p0

    :pswitch_data_2e
    .packed-switch -0x1
        :pswitch_2b  #ffffffff
        :pswitch_28  #00000000
        :pswitch_25  #00000001
        :pswitch_22  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
        :pswitch_19  #00000005
        :pswitch_16  #00000006
    .end packed-switch
.end method


# virtual methods
.method public setPosition(III)V
    .registers 4

    .line 238
    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    .line 239
    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    .line 240
    iput p3, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode="

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    invoke-static {v1}, Landroidx/slice/widget/SliceView;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionType="

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowTemplateType="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->rowTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rowIndex="

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionPosition="

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    invoke-static {v1}, Landroidx/slice/widget/EventInfo;->positionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionIndex="

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionCount="

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/slice/widget/EventInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
