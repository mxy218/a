.class Lcom/android/server/pm/ShortcutService$DumpFilter;
.super Ljava/lang/Object;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DumpFilter"
.end annotation


# instance fields
.field private mCheckInClear:Z

.field private mDumpCheckIn:Z

.field private mDumpDetails:Z

.field private mDumpFiles:Z

.field private mDumpMain:Z

.field private mDumpUid:Z

.field private mPackagePatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 3809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3810
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3811
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3813
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3814
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3815
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3817
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 3819
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3826
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 3827
    return-void
.end method

.method addPackageRegex(Ljava/lang/String;)V
    .registers 4
    .param p1, "regex"  # Ljava/lang/String;

    .line 3822
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3823
    return-void
.end method

.method addUser(I)V
    .registers 4
    .param p1, "userId"  # I

    .line 3830
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3831
    return-void
.end method

.method isPackageMatch(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 3834
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3835
    return v1

    .line 3837
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 3838
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 3839
    return v1

    .line 3837
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3842
    .end local v0  # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method isUserMatch(I)Z
    .registers 5
    .param p1, "userId"  # I

    .line 3846
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3847
    return v1

    .line 3849
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    .line 3850
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_22

    .line 3851
    return v1

    .line 3849
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 3854
    .end local v0  # "i":I
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckInClear(Z)V
    .registers 2
    .param p1, "checkInClear"  # Z

    .line 3870
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3871
    return-void
.end method

.method public setDumpCheckIn(Z)V
    .registers 2
    .param p1, "dumpCheckIn"  # Z

    .line 3862
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3863
    return-void
.end method

.method public setDumpDetails(Z)V
    .registers 2
    .param p1, "dumpDetails"  # Z

    .line 3902
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3903
    return-void
.end method

.method public setDumpFiles(Z)V
    .registers 2
    .param p1, "dumpFiles"  # Z

    .line 3894
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3895
    return-void
.end method

.method public setDumpMain(Z)V
    .registers 2
    .param p1, "dumpMain"  # Z

    .line 3878
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3879
    return-void
.end method

.method public setDumpUid(Z)V
    .registers 2
    .param p1, "dumpUid"  # Z

    .line 3886
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3887
    return-void
.end method

.method public shouldCheckInClear()Z
    .registers 2

    .line 3866
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    return v0
.end method

.method public shouldDumpCheckIn()Z
    .registers 2

    .line 3858
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    return v0
.end method

.method public shouldDumpDetails()Z
    .registers 2

    .line 3898
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    return v0
.end method

.method public shouldDumpFiles()Z
    .registers 2

    .line 3890
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    return v0
.end method

.method public shouldDumpMain()Z
    .registers 2

    .line 3874
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    return v0
.end method

.method public shouldDumpUid()Z
    .registers 2

    .line 3882
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    return v0
.end method
