.class final Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayConnector"
.end annotation


# instance fields
.field mDimensionsChanged:Z

.field final mDisplayId:I

.field mEngine:Landroid/service/wallpaper/IWallpaperEngine;

.field mPaddingChanged:Z

.field final mToken:Landroid/os/Binder;

.field final synthetic this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V
    .registers 3

    .line 1079
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1074
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    .line 1080
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    .line 1081
    return-void
.end method


# virtual methods
.method connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 14

    .line 1104
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    const-string v1, "WallpaperManagerService"

    if-nez v0, :cond_c

    .line 1105
    const-string p1, "WallpaperService is not connected yet"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    return-void

    .line 1110
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    const/16 v3, 0x7dd

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-interface {v0, v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1d} :catch_5b

    .line 1114
    nop

    .line 1116
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1800(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 1118
    :try_start_28
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    const/16 v5, 0x7dd

    const/4 v6, 0x0

    iget v7, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    move-object v3, p1

    invoke-interface/range {v2 .. v10}, Landroid/service/wallpaper/IWallpaperService;->attach(Landroid/service/wallpaper/IWallpaperConnection;Landroid/os/IBinder;IZIILandroid/graphics/Rect;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3b} :catch_3c

    .line 1128
    goto :goto_5a

    .line 1121
    :catch_3c
    move-exception v0

    .line 1122
    const-string v2, "Failed attaching wallpaper on display"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1123
    if-eqz p2, :cond_5a

    iget-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v0, :cond_5a

    .line 1124
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getConnectedEngineSize()I

    move-result p1

    if-nez p1, :cond_5a

    .line 1125
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 1129
    :cond_5a
    :goto_5a
    return-void

    .line 1111
    :catch_5b
    move-exception p1

    .line 1112
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed add wallpaper window token on display "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    return-void
.end method

.method disconnectLocked()V
    .registers 4

    .line 1134
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 1136
    goto :goto_11

    .line 1135
    :catch_10
    move-exception v0

    .line 1138
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_1a

    .line 1139
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1142
    :cond_1a
    goto :goto_1c

    .line 1141
    :catch_1b
    move-exception v0

    .line 1143
    :goto_1c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1144
    return-void
.end method

.method ensureStatusHandled()V
    .registers 7

    .line 1084
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-static {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1800(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 1085
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    const/4 v2, 0x0

    const-string v3, "WallpaperManagerService"

    if-eqz v1, :cond_23

    .line 1087
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-interface {v1, v4, v5}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b

    .line 1090
    goto :goto_21

    .line 1088
    :catch_1b
    move-exception v1

    .line 1089
    const-string v4, "Failed to set wallpaper dimensions"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1091
    :goto_21
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 1093
    :cond_23
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    if-eqz v1, :cond_37

    .line 1095
    :try_start_27
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_2f

    .line 1098
    goto :goto_35

    .line 1096
    :catch_2f
    move-exception v0

    .line 1097
    const-string v1, "Failed to set wallpaper padding"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    :goto_35
    iput-boolean v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    .line 1101
    :cond_37
    return-void
.end method
