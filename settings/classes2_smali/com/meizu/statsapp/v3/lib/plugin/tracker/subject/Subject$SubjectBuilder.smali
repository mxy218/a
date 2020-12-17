.class public Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;
.super Ljava/lang/Object;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubjectBuilder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private pkgKey:Ljava/lang/String;

.field private pkgType:I

.field private replacePackage:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->replacePackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)I
    .registers 1

    .line 58
    iget p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgType:I

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;)Ljava/lang/String;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;
    .registers 3

    .line 100
    new-instance v0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$1;)V

    return-object v0
.end method

.method public context(Landroid/content/Context;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->context:Landroid/content/Context;

    return-object p0
.end method

.method public pkgKey(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgKey:Ljava/lang/String;

    return-object p0
.end method

.method public pkgType(I)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;
    .registers 2

    .line 80
    iput p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->pkgType:I

    return-object p0
.end method

.method public replacePackage(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->replacePackage:Ljava/lang/String;

    return-object p0
.end method

.method public sdkVersion(Ljava/lang/String;)Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/tracker/subject/Subject$SubjectBuilder;->sdkVersion:Ljava/lang/String;

    return-object p0
.end method
