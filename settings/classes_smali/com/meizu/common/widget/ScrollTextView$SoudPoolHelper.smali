.class Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoudPoolHelper"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mIsFinishedLoad:Z

.field public mIsRelease:Z

.field private mSoundHander:Landroid/os/Handler;

.field private mSoundLooper:Landroid/os/Looper;

.field public mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolThread:Ljava/lang/Thread;

.field public mVoiceID:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1842
    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPoolThread:Ljava/lang/Thread;

    .line 1843
    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundHander:Landroid/os/Handler;

    .line 1844
    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundLooper:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/ScrollTextView$1;)V
    .registers 2

    .line 1841
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;-><init>()V

    return-void
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)Landroid/os/Looper;
    .registers 1

    .line 1841
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundLooper:Landroid/os/Looper;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2

    .line 1841
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 1841
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundHander:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)Z
    .registers 1

    .line 1841
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->querySoundEffectsEnabled()Z

    move-result p0

    return p0
.end method

.method private querySoundEffectsEnabled()Z
    .registers 3

    .line 1950
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method


# virtual methods
.method public initSoundPool(Landroid/content/Context;)V
    .registers 3

    .line 1852
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 1853
    iput-boolean p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    .line 1856
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$1;-><init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPoolThread:Ljava/lang/Thread;

    .line 1905
    iget-object p0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPoolThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAttachedToWindow(Landroid/content/Context;)V
    .registers 3

    .line 1940
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    if-nez v0, :cond_7

    .line 1941
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->initSoundPool(Landroid/content/Context;)V

    :cond_7
    return-void
.end method

.method public play()V
    .registers 3

    .line 1909
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundHander:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 1910
    new-instance v1, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper$2;-><init>(Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public release()V
    .registers 4

    .line 1922
    monitor-enter p0

    const/4 v0, 0x1

    .line 1923
    :try_start_2
    iput-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsRelease:Z

    .line 1924
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundHander:Landroid/os/Handler;

    if-eqz v0, :cond_2c

    .line 1925
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1926
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    if-eqz v0, :cond_19

    .line 1927
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mVoiceID:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 1929
    :cond_19
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1930
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1931
    iput-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundPoolThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    .line 1932
    iput-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mIsFinishedLoad:Z

    .line 1933
    iput-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mContext:Landroid/content/Context;

    .line 1934
    iput-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$SoudPoolHelper;->mSoundHander:Landroid/os/Handler;

    .line 1936
    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2 .. :try_end_30} :catchall_2e

    throw v0
.end method
