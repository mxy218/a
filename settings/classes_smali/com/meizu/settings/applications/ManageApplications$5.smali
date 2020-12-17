.class Lcom/meizu/settings/applications/ManageApplications$5;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/ManageApplications;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications;)V
    .registers 2

    .line 2288
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .registers 5

    .line 2291
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1000(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    .line 2292
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0, v1}, Lcom/meizu/settings/applications/ManageApplications;->access$1002(Lcom/meizu/settings/applications/ManageApplications;Z)Z

    .line 2293
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1100(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2294
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0, v1}, Lcom/meizu/settings/applications/ManageApplications;->access$1202(Lcom/meizu/settings/applications/ManageApplications;Z)Z

    .line 2296
    :cond_1b
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$2800(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2297
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$2800(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2299
    :cond_2c
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 2300
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2302
    :cond_3d
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v2, v0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    const/4 v3, 0x1

    if-eqz v2, :cond_61

    .line 2303
    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1900(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1802(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2304
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v0, v0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2600(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/widget/FastScrollLetterListview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setFastScrollLetterEnable(ZZ)V

    .line 2305
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$2900(Lcom/meizu/settings/applications/ManageApplications;)V

    .line 2307
    :cond_61
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$5;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p0, v1}, Lcom/meizu/settings/applications/ManageApplications;->access$800(Lcom/meizu/settings/applications/ManageApplications;Z)V

    return v3

    :cond_67
    return v1
.end method
