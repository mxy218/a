.class Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;)V
    .registers 2

    .line 682
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 686
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_53

    .line 687
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/ManageApplications;->access$800(Lcom/meizu/settings/applications/ManageApplications;Z)V

    .line 688
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$900(Lcom/meizu/settings/applications/ManageApplications;)Lcom/meizu/settings/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_53

    .line 689
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/ManageApplications;->access$1002(Lcom/meizu/settings/applications/ManageApplications;Z)Z

    .line 690
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1100(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 691
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1, p2}, Lcom/meizu/settings/applications/ManageApplications;->access$1202(Lcom/meizu/settings/applications/ManageApplications;Z)Z

    .line 693
    :cond_30
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_53

    .line 694
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter$1;->this$1:Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;->this$0:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$1300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_53
    return p2
.end method
