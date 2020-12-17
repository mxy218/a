.class final Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;
.super Landroid/os/AsyncTask;
.source "FlymeLunarDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoadLunarInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$1;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;-><init>(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 35
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .registers 3

    .line 39
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->access$102(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;Z)Z

    .line 40
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->getInstance()Lcom/flyme/systemui/statusbar/utils/LunarUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->loadLunarInfo()V

    .line 41
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->getInstance()Lcom/flyme/systemui/statusbar/utils/LunarUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->getLunarYear()Ljava/lang/String;

    move-result-object p0

    .line 42
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->getInstance()Lcom/flyme/systemui/statusbar/utils/LunarUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flyme/systemui/statusbar/utils/LunarUtils;->getLunarMonthAndDay()Ljava/lang/String;

    move-result-object p1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->access$102(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;Z)Z

    .line 50
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;->this$0:Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;->access$202(Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView;Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;)Lcom/flyme/systemui/statusbar/policy/FlymeLunarDateView$LoadLunarInfoTask;

    return-void
.end method
