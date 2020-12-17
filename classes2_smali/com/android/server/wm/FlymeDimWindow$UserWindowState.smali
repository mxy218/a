.class Lcom/android/server/wm/FlymeDimWindow$UserWindowState;
.super Ljava/lang/Object;
.source "FlymeDimWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeDimWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserWindowState"
.end annotation


# instance fields
.field show:Z

.field showDim:Z

.field showWallpaper:Z

.field final synthetic this$0:Lcom/android/server/wm/FlymeDimWindow;

.field userId:I
    .annotation build Lcom/android/server/wm/FlymeDimWindow$User;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/wm/FlymeDimWindow;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;->this$0:Lcom/android/server/wm/FlymeDimWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/FlymeDimWindow;Lcom/android/server/wm/FlymeDimWindow$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/wm/FlymeDimWindow;
    .param p2, "x1"  # Lcom/android/server/wm/FlymeDimWindow$1;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeDimWindow$UserWindowState;-><init>(Lcom/android/server/wm/FlymeDimWindow;)V

    return-void
.end method
