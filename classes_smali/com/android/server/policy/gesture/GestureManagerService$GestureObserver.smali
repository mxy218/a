.class Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;
.super Landroid/database/ContentObserver;
.source "GestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/GestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GestureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gesture/GestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/gesture/GestureManagerService;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/policy/gesture/GestureManagerService;
    .param p2, "handler"  # Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    .line 115
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 9
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 121
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 125
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "uriPath":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v1}, Lcom/android/server/policy/gesture/GestureManagerService;->access$000(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 128
    iget-object v1, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v1}, Lcom/android/server/policy/gesture/GestureManagerService;->access$100(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "enable":I
    iget-object v2, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v2}, Lcom/android/server/policy/gesture/GestureManagerService;->access$000(Lcom/android/server/policy/gesture/GestureManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 131
    .local v2, "gestureEnableValue":I
    iget-object v3, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3d

    invoke-static {v3}, Lcom/android/server/policy/gesture/GestureManagerService;->access$200(Lcom/android/server/policy/gesture/GestureManagerService;)I

    move-result v4

    or-int/2addr v4, v2

    goto :goto_43

    .line 132
    :cond_3d
    invoke-static {v3}, Lcom/android/server/policy/gesture/GestureManagerService;->access$200(Lcom/android/server/policy/gesture/GestureManagerService;)I

    move-result v4

    not-int v5, v2

    and-int/2addr v4, v5

    .line 131
    :goto_43
    invoke-static {v3, v4}, Lcom/android/server/policy/gesture/GestureManagerService;->access$202(Lcom/android/server/policy/gesture/GestureManagerService;I)I

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMainGestureControlValue enableValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", enable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GestureManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v3, p0, Lcom/android/server/policy/gesture/GestureManagerService$GestureObserver;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-static {v3}, Lcom/android/server/policy/gesture/GestureManagerService;->access$300(Lcom/android/server/policy/gesture/GestureManagerService;)V

    .line 135
    return-void

    .line 138
    .end local v1  # "enable":I
    .end local v2  # "gestureEnableValue":I
    :cond_6b
    return-void
.end method
