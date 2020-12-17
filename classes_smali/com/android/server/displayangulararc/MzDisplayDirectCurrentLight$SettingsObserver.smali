.class final Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MzDisplayDirectCurrentLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# direct methods
.method public constructor <init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"  # Landroid/os/Handler;

    .line 110
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 111
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 112
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"  # Z
    .param p2, "uri"  # Landroid/net/Uri;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange(self="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzDisplayDirectCurrentLight"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$1000(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 118
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;->this$0:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-static {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->access$1100(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V

    .line 120
    :cond_30
    return-void
.end method
