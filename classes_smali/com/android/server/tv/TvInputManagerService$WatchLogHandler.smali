.class final Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;
.super Landroid/os/Handler;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatchLogHandler"
.end annotation


# static fields
.field static final MSG_LOG_WATCH_END:I = 0x2

.field static final MSG_LOG_WATCH_START:I = 0x1

.field static final MSG_SWITCH_CONTENT_RESOLVER:I = 0x3


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .registers 3

    .line 2761
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2762
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2763
    return-void
.end method

.method private encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    .line 2819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2820
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2821
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2822
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 2823
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2824
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 2825
    if-nez v3, :cond_20

    .line 2826
    goto :goto_d

    .line 2828
    :cond_20
    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2830
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2832
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    :cond_42
    goto :goto_d

    .line 2835
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private replaceEscapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 2841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2842
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_22

    aget-char v3, p1, v2

    .line 2843
    const-string v4, "%=,"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1c

    .line 2844
    const/16 v4, 0x25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2846
    :cond_1c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2842
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2848
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    .line 2767
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string/jumbo v2, "session_token"

    if-eq v0, v1, :cond_64

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    .line 2812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unhandled message code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TvInputManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c3

    .line 2808
    :cond_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 2809
    goto/16 :goto_c3

    .line 2793
    :cond_31
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2794
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 2795
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2797
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2798
    nop

    .line 2799
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2798
    const-string/jumbo v4, "watch_end_time_utc_millis"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2800
    nop

    .line 2801
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2800
    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2804
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2805
    goto :goto_c3

    .line 2769
    :cond_64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 2770
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2771
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2772
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2773
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 2774
    iget-object v7, p1, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v7, Landroid/os/IBinder;

    .line 2776
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2777
    const-string/jumbo v9, "package_name"

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2778
    nop

    .line 2779
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2778
    const-string/jumbo v3, "watch_start_time_utc_millis"

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2780
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "channel_id"

    invoke-virtual {v8, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2781
    if-eqz v1, :cond_b0

    .line 2782
    nop

    .line 2783
    invoke-direct {p0, v1}, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->encodeTuneParams(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 2782
    const-string/jumbo v1, "tune_params"

    invoke-virtual {v8, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    :cond_b0
    nop

    .line 2786
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2785
    invoke-virtual {v8, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$WatchLogHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/media/tv/TvContract$WatchedPrograms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2789
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2790
    nop

    .line 2816
    :goto_c3
    return-void
.end method
