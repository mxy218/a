.class Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SilentModeTriStateAction"
.end annotation


# instance fields
.field private final ITEM_IDS:[I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
    .registers 4

    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1331
    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->ITEM_IDS:[I

    .line 1337
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    .line 1338
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    return-void

    :array_10
    .array-data 4
        0x102038c
        0x102038d
        0x102038e
    .end array-data
.end method

.method private indexToRingerMode(I)I
    .registers 2

    return p1
.end method

.method private ringerModeToIndex(I)I
    .registers 2

    return p1
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 7

    const/4 p1, 0x0

    const p2, 0x1090077

    .line 1358
    invoke-virtual {p4, p2, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1360
    iget-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->ringerModeToIndex(I)I

    move p4, p1

    :goto_12
    const/4 v0, 0x3

    if-ge p4, v0, :cond_32

    .line 1362
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->ITEM_IDS:[I

    aget v0, v0, p4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-ne p3, p4, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    move v1, p1

    .line 1363
    :goto_22
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1365
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1366
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_12

    :cond_32
    return-object p2
.end method

.method public isEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_9

    return-void

    .line 1392
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->indexToRingerMode(I)I

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1394
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeTriStateAction;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPress()V
    .registers 1

    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
