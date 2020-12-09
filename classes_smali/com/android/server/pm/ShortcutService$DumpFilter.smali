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

    .line 3781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3782
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3783
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3785
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3786
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3787
    iput-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3789
    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    .line 3791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .registers 2

    .line 3798
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$DumpFilter;->addPackageRegex(Ljava/lang/String;)V

    .line 3799
    return-void
.end method

.method addPackageRegex(Ljava/lang/String;)V
    .registers 3

    .line 3794
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3795
    return-void
.end method

.method addUser(I)V
    .registers 3

    .line 3802
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3803
    return-void
.end method

.method isPackageMatch(Ljava/lang/String;)Z
    .registers 6

    .line 3806
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3807
    return v1

    .line 3809
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    :goto_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 3810
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mPackagePatterns:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 3811
    return v1

    .line 3809
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3814
    :cond_2a
    return v0
.end method

.method isUserMatch(I)Z
    .registers 6

    .line 3818
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3819
    return v1

    .line 3821
    :cond_a
    const/4 v0, 0x0

    move v2, v0

    :goto_c
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 3822
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mUsers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_23

    .line 3823
    return v1

    .line 3821
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3826
    :cond_26
    return v0
.end method

.method public setCheckInClear(Z)V
    .registers 2

    .line 3842
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    .line 3843
    return-void
.end method

.method public setDumpCheckIn(Z)V
    .registers 2

    .line 3834
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    .line 3835
    return-void
.end method

.method public setDumpDetails(Z)V
    .registers 2

    .line 3874
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    .line 3875
    return-void
.end method

.method public setDumpFiles(Z)V
    .registers 2

    .line 3866
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    .line 3867
    return-void
.end method

.method public setDumpMain(Z)V
    .registers 2

    .line 3850
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    .line 3851
    return-void
.end method

.method public setDumpUid(Z)V
    .registers 2

    .line 3858
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    .line 3859
    return-void
.end method

.method public shouldCheckInClear()Z
    .registers 2

    .line 3838
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mCheckInClear:Z

    return v0
.end method

.method public shouldDumpCheckIn()Z
    .registers 2

    .line 3830
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpCheckIn:Z

    return v0
.end method

.method public shouldDumpDetails()Z
    .registers 2

    .line 3870
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpDetails:Z

    return v0
.end method

.method public shouldDumpFiles()Z
    .registers 2

    .line 3862
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpFiles:Z

    return v0
.end method

.method public shouldDumpMain()Z
    .registers 2

    .line 3846
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpMain:Z

    return v0
.end method

.method public shouldDumpUid()Z
    .registers 2

    .line 3854
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutService$DumpFilter;->mDumpUid:Z

    return v0
.end method
