.class Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertyChangedListener;
.super Ljava/lang/Object;
.source "HighRefreshRateBlacklist.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertyChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/HighRefreshRateBlacklist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPropertyChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/HighRefreshRateBlacklist;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/HighRefreshRateBlacklist;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertyChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/HighRefreshRateBlacklist;Lcom/android/server/wm/HighRefreshRateBlacklist$1;)V
    .registers 3

    .line 110
    invoke-direct {p0, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertyChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateBlacklist;)V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 113
    const-string p1, "high_refresh_rate_blacklist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 114
    iget-object p1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertyChangedListener;->this$0:Lcom/android/server/wm/HighRefreshRateBlacklist;

    invoke-static {p1, p3}, Lcom/android/server/wm/HighRefreshRateBlacklist;->access$100(Lcom/android/server/wm/HighRefreshRateBlacklist;Ljava/lang/String;)V

    .line 116
    :cond_d
    return-void
.end method
