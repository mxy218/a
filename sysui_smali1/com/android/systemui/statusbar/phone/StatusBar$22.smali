.class Lcom/android/systemui/statusbar/phone/StatusBar$22;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->onPositionChanged(FZFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$frank:F

.field final synthetic val$panelDown:Z

.field final synthetic val$wallpaperFrank:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;FZF)V
    .registers 5

    .line 5347
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->val$frank:F

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->val$panelDown:Z

    iput p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->val$wallpaperFrank:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 5350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->val$frank:F

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->val$panelDown:Z

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$22;->val$wallpaperFrank:F

    invoke-virtual {v0, v1, v2, p0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->onPositionChanged(FZF)V

    return-void
.end method
