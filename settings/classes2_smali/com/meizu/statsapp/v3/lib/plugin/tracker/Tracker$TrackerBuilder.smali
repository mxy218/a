.class public Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;
.super Ljava/lang/Object;
.source "Tracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrackerBuilder"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private debug:Z

.field private final emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

.field private subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;


# direct methods
.method public constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;Landroid/content/Context;)V
    .registers 4

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    .line 68
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    .line 69
    iput-object p2, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->emitter:Lcom/meizu/statsapp/v3/lib/plugin/emitter/Emitter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Landroid/content/Context;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->debug:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;
    .registers 2

    .line 94
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;

    invoke-direct {v0, p0}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;)V

    return-object v0
.end method

.method public debug(Z)Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->debug:Z

    return-object p0
.end method

.method public subject(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/Tracker$TrackerBuilder;->subject:Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    return-object p0
.end method
