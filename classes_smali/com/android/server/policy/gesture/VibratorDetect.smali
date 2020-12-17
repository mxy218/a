.class public Lcom/android/server/policy/gesture/VibratorDetect;
.super Lcom/android/server/policy/gesture/GestureListenerBase;
.source "VibratorDetect.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_DELAY_SET_AUDIO_COMPARE_ENABLED:I


# instance fields
.field private DISABLE_AUDIO_COMPARE_DELAY:I

.field private HOT_AREA_STRING:Ljava/lang/String;

.field private mAudioCompareEnabled:Z

.field private mGameVibratorEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHotAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mPointersDownHotArea:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[[",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V
    .registers 4
    .param p1, "SystemGesture"  # Lcom/android/server/policy/gesture/SystemGesture;
    .param p2, "context"  # Landroid/content/Context;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;-><init>(Lcom/android/server/policy/gesture/SystemGesture;Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mPointersDownHotArea:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mHotAreas:Ljava/util/List;

    .line 35
    const-string v0, "100,200,400,600|1800,200,2200,600"

    iput-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->HOT_AREA_STRING:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mGameVibratorEnabled:Z

    .line 40
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->DISABLE_AUDIO_COMPARE_DELAY:I

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/gesture/VibratorDetect;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/VibratorDetect;

    .line 31
    invoke-direct {p0}, Lcom/android/server/policy/gesture/VibratorDetect;->handleGameHotAreaChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/gesture/VibratorDetect;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/VibratorDetect;

    .line 31
    invoke-direct {p0}, Lcom/android/server/policy/gesture/VibratorDetect;->handleVibratorDetectDelayChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/gesture/VibratorDetect;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/policy/gesture/VibratorDetect;

    .line 31
    invoke-direct {p0}, Lcom/android/server/policy/gesture/VibratorDetect;->handleGameVibratorEnabledChanged()V

    return-void
.end method

.method private checkPointerDownHotArea(FF)Z
    .registers 6
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 176
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mHotAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 177
    .local v1, "hotArea":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_30

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_30

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_30

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_30

    .line 178
    const/4 v0, 0x1

    return v0

    .line 180
    .end local v1  # "hotArea":Landroid/graphics/Rect;
    :cond_30
    goto :goto_6

    .line 181
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method private disableAudioCompareDelay(I)V
    .registers 6
    .param p1, "delay"  # I

    .line 224
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 225
    return-void
.end method

.method private handleGameHotAreaChanged()V
    .registers 4

    .line 185
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    const-string v1, "game_vibrator_hot_area"

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/gesture/VibratorDetect;->parseHotAreas(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method private handleGameVibratorEnabledChanged()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mContext:Landroid/content/Context;

    .line 193
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    const-string v2, "game_vibrator_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    iput-boolean v1, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mGameVibratorEnabled:Z

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GameVibratorEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mGameVibratorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private handleVibratorDetectDelayChanged()V
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mContext:Landroid/content/Context;

    .line 229
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    const-string v1, "flyme.disable.vibrator.delay"

    const/16 v2, 0x12c

    const/4 v3, -0x3

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->DISABLE_AUDIO_COMPARE_DELAY:I

    .line 234
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable vibrator delay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/gesture/VibratorDetect;->DISABLE_AUDIO_COMPARE_DELAY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void
.end method

.method private parseHotAreas(Ljava/lang/String;)V
    .registers 14
    .param p1, "hotAreasString"  # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mHotAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 200
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "hotAreas":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_14
    if-ge v3, v1, :cond_5a

    aget-object v4, v0, v3

    .line 203
    .local v4, "hotArea":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "rect":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_57

    .line 205
    iget-object v6, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mHotAreas:Ljava/util/List;

    new-instance v7, Landroid/graphics/Rect;

    aget-object v8, v5, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, 0x3

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v4  # "hotArea":Ljava/lang/String;
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 209
    .end local v0  # "hotAreas":[Ljava/lang/String;
    .end local v5  # "rect":[Ljava/lang/String;
    :cond_5a
    return-void
.end method

.method private setAudioCompareEnabled(Z)V
    .registers 5
    .param p1, "enabled"  # Z

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    iget-boolean v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mAudioCompareEnabled:Z

    if-eq v0, p1, :cond_30

    .line 169
    iput-boolean p1, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mAudioCompareEnabled:Z

    .line 170
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioCompareEnabled enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-eqz p1, :cond_28

    const-string v0, "1"

    goto :goto_2a

    :cond_28
    const-string v0, "0"

    :goto_2a
    const-string/jumbo v1, "persist.sys.audiocompare.vibrator"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_30
    return-void
.end method


# virtual methods
.method protected getSupportGestureType()I
    .registers 2

    .line 158
    const/4 v0, -0x1

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"  # Landroid/os/Message;

    .line 214
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    goto :goto_10

    .line 216
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 217
    .local v0, "enalbed":Z
    invoke-direct {p0, v0}, Lcom/android/server/policy/gesture/VibratorDetect;->setAudioCompareEnabled(Z)V

    .line 220
    .end local v0  # "enalbed":Z
    :goto_10
    const/4 v0, 0x0

    return v0
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .registers 6
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 148
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)Z
    .registers 4
    .param p1, "event"  # Landroid/view/KeyEvent;
    .param p2, "policyFlags"  # I

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I
    .registers 12
    .param p1, "event"  # Landroid/view/MotionEvent;
    .param p2, "policyFlags"  # I

    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/server/policy/gesture/GestureListenerBase;->interceptMotionBeforeQueueing(Landroid/view/MotionEvent;I)I

    .line 82
    const/4 v0, 0x1

    .line 83
    .local v0, "result":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 84
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 85
    .local v2, "y":F
    const/4 v3, 0x2

    const/4 v4, 0x1

    filled-new-array {v4, v3}, [I

    move-result-object v5

    const-class v6, Ljava/lang/Float;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/lang/Float;

    .line 88
    .local v5, "location":[[Ljava/lang/Float;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_86

    if-eq v6, v4, :cond_7b

    if-eq v6, v3, :cond_7a

    const/4 v3, 0x3

    if-eq v6, v3, :cond_7b

    const/4 v3, 0x5

    if-eq v6, v3, :cond_86

    const/4 v3, 0x6

    if-eq v6, v3, :cond_37

    goto/16 :goto_e3

    .line 119
    :cond_37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 120
    .local v3, "pointerId":I
    iget-object v4, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mPointersDownHotArea:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v4, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mPointersDownHotArea:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_55

    .line 122
    iget v4, p0, Lcom/android/server/policy/gesture/VibratorDetect;->DISABLE_AUDIO_COMPARE_DELAY:I

    invoke-direct {p0, v4}, Lcom/android/server/policy/gesture/VibratorDetect;->disableAudioCompareDelay(I)V

    .line 124
    :cond_55
    iget-object v4, p0, Lcom/android/server/policy/gesture/VibratorDetect;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finger up pointerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mPointersDownHotArea:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_e3

    .line 116
    .end local v3  # "pointerId":I
    :cond_7a
    goto :goto_e3

    .line 129
    :cond_7b
    iget-object v3, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mPointersDownHotArea:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 130
    iget v3, p0, Lcom/android/server/policy/gesture/VibratorDetect;->DISABLE_AUDIO_COMPARE_DELAY:I

    invoke-direct {p0, v3}, Lcom/android/server/policy/gesture/VibratorDetect;->disableAudioCompareDelay(I)V

    goto :goto_e3

    .line 91
    :cond_86
    iget-object v3, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mSystemGesture:Lcom/android/server/policy/gesture/SystemGesture;

    iget-object v3, v3, Lcom/android/server/policy/gesture/SystemGesture;->mMzPhoneWindowManager:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/MzPhoneWindowManager;->isGameMode()Z

    move-result v3

    if-eqz v3, :cond_e3

    iget-boolean v3, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mGameVibratorEnabled:Z

    if-eqz v3, :cond_e3

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/gesture/VibratorDetect;->checkPointerDownHotArea(FF)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 93
    .restart local v3  # "pointerId":I
    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v6

    .line 94
    aget-object v6, v5, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v4

    .line 95
    iget-object v6, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mPointersDownHotArea:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-direct {p0, v4}, Lcom/android/server/policy/gesture/VibratorDetect;->setAudioCompareEnabled(Z)V

    .line 97
    iget-object v4, p0, Lcom/android/server/policy/gesture/VibratorDetect;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Finger down in hot area , pointerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mPointersDownHotArea:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    .end local v3  # "pointerId":I
    :cond_e3
    :goto_e3
    return v0
.end method

.method public interceptMotionBeforeQueueingVice(Landroid/view/MotionEvent;)I
    .registers 3
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method protected isSupportGestureType(I)Z
    .registers 3
    .param p1, "gesture"  # I

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldInterceptGesture()Z
    .registers 2

    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .registers 7

    .line 49
    invoke-super {p0}, Lcom/android/server/policy/gesture/GestureListenerBase;->systemReady()V

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    const-string v1, "game_vibrator_hot_area"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/VibratorDetect$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/gesture/VibratorDetect$1;-><init>(Lcom/android/server/policy/gesture/VibratorDetect;Landroid/os/Handler;)V

    .line 50
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 58
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 59
    const-string v1, "flyme.disable.vibrator.delay"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/VibratorDetect$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/gesture/VibratorDetect$2;-><init>(Lcom/android/server/policy/gesture/VibratorDetect;Landroid/os/Handler;)V

    .line 58
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    iget-object v0, p0, Lcom/android/server/policy/gesture/VibratorDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    const-string v1, "game_vibrator_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/policy/gesture/VibratorDetect$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/policy/gesture/VibratorDetect$3;-><init>(Lcom/android/server/policy/gesture/VibratorDetect;Landroid/os/Handler;)V

    .line 66
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 74
    invoke-direct {p0}, Lcom/android/server/policy/gesture/VibratorDetect;->handleGameHotAreaChanged()V

    .line 75
    invoke-direct {p0}, Lcom/android/server/policy/gesture/VibratorDetect;->handleVibratorDetectDelayChanged()V

    .line 76
    invoke-direct {p0}, Lcom/android/server/policy/gesture/VibratorDetect;->handleGameVibratorEnabledChanged()V

    .line 77
    return-void
.end method
