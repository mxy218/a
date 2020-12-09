.class Lcom/android/server/display/color/ColorDisplayService$1;
.super Landroid/database/ContentObserver;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/color/ColorDisplayService;->onUserChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/color/ColorDisplayService;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 252
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    iput-object p3, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 255
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    iget-object p2, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p2}, Lcom/android/server/display/color/ColorDisplayService;->access$300(Lcom/android/server/display/color/ColorDisplayService;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$400(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 256
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->val$cr:Landroid/content/ContentResolver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 257
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->access$502(Lcom/android/server/display/color/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;

    .line 259
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$600(Lcom/android/server/display/color/ColorDisplayService;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 260
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService$1;->this$0:Lcom/android/server/display/color/ColorDisplayService;

    invoke-static {p1}, Lcom/android/server/display/color/ColorDisplayService;->access$700(Lcom/android/server/display/color/ColorDisplayService;)V

    .line 263
    :cond_26
    return-void
.end method
