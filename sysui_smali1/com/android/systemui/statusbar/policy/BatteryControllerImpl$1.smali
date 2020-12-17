.class Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;
.super Ljava/lang/Object;
.source "BatteryControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Landroid/content/Context;)V
    .registers 3

    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 177
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    const/4 p1, 0x1

    .line 178
    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    .line 179
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget p2, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    iput p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->saveLevel:I

    .line 180
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->savePlugged:Z

    .line 181
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 184
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    const-string/jumbo v1, "testmode"

    const-string v2, "plugged"

    const-string v3, "level"

    const/4 v4, 0x0

    if-gez v0, :cond_25

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$002(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;Z)Z

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    iget v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->saveLevel:I

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->savePlugged:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3a

    .line 190
    :cond_25
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    invoke-virtual {v5, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    const/4 v5, 0x1

    if-lez v3, :cond_32

    move v4, v5

    :cond_32
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 195
    :goto_3a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->dummy:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$000(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Z

    move-result v0

    if-nez v0, :cond_4a

    return-void

    .line 199
    :cond_4a
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    .line 200
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->curLevel:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_5b

    mul-int/lit8 v1, v1, -0x1

    .line 201
    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->incr:I

    .line 203
    :cond_5b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
