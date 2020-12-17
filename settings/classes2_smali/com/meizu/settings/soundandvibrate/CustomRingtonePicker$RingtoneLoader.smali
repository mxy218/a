.class Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;
.super Landroid/os/AsyncTask;
.source "CustomRingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RingtoneLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;


# direct methods
.method private constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$1;)V
    .registers 3

    .line 90
    invoke-direct {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;-><init>(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 90
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p0}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$000(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 90
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneInfoWrap;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_10

    .line 97
    iget-object v0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-virtual {v0}, Landroid/app/ListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 100
    :cond_b
    iget-object p0, p0, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker$RingtoneLoader;->this$0:Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;

    invoke-static {p0, p1}, Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;->access$100(Lcom/meizu/settings/soundandvibrate/CustomRingtonePicker;Ljava/util/List;)V

    :cond_10
    :goto_10
    return-void
.end method
